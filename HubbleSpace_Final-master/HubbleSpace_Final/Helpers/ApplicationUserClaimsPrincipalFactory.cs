﻿using HubbleSpace_Final.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace HubbleSpace_Final.Helpers
{
    public class ApplicationUserClaimsPrincipalFactory: UserClaimsPrincipalFactory<ApplicationUser,IdentityRole>
    {
        public ApplicationUserClaimsPrincipalFactory(UserManager<ApplicationUser> userManager,RoleManager<IdentityRole>roleManager,IOptions<IdentityOptions>options): base(userManager, roleManager, options)
        {

        }
        protected override async Task<ClaimsIdentity>GenerateClaimsAsync(ApplicationUser user)
        {
            var identity = await base.GenerateClaimsAsync(user);
            DateTime? DOB = user.DateOfBirth;

            string changeDOB = DOB.ToString();
            identity.AddClaim(new Claim("UserFirstName", user.FirstName ?? ""));
            identity.AddClaim(new Claim("UserLastName", user.LastName ?? ""));
            identity.AddClaim(new Claim("UserEmail", user.Email ?? ""));
            identity.AddClaim(new Claim("UserAddress", user.Address ?? ""));
            identity.AddClaim(new Claim("UserPhoneNumber", user.PhoneNumber ?? ""));
            identity.AddClaim(new Claim("Userusername", user.UserName ?? ""));
            identity.AddClaim(new Claim("UserCreditCard", user.CreditCard ?? ""));
            identity.AddClaim(new Claim("UserDOB", changeDOB ?? ""));


            return identity;
        }
    }
}
