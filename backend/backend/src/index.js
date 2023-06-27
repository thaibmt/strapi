'use strict';
const { faker }=require('@faker-js/faker/locale/vi');
module.exports = {
  /**
   * An asynchronous register function that runs before
   * your application is initialized.
   *
   * This gives you an opportunity to extend code.
   */
  register(/*{ strapi }*/) {},

  /**
   * An asynchronous bootstrap function that runs before
   * your application gets started.
   *
   * This gives you an opportunity to set up your data model,
   * run jobs, or perform some special logic.
   */
  async bootstrap({ strapi }) {
    for (let i=0;i<40;i++){
      await strapi.entityService.create('api::category.category', {
        data:{
          categoryName:faker.commerce.department()+ ' ' + faker.word.noun(5),
          description:faker.lorem.paragraph()
      },
      });
    }
  },
};

// 'use strict';
// const { faker }=require('@faker-js/faker/locale/vi');
// module.exports = {
//   /**
//    * An asynchronous register function that runs before
//    * your application is initialized.
//    *
//    * This gives you an opportunity to extend code.
//    */
//   register(/*{ strapi }*/) {},

//   /**
//    * An asynchronous bootstrap function that runs before
//    * your application gets started.
//    *
//    * This gives you an opportunity to set up your data model,
//    * run jobs, or perform some special logic.
//    */
//   async bootstrap({ strapi }) {
//     for (let i=0;i<50;i++){
//       await strapi.entityService.create('api::category.category', {
//         data:{
//           categoryName:faker.commerce.categoryName()+ ' ' + faker.word.noun(),
//           description:faker.commerce.categoryDescription()+faker.word.noun(),
//           price:faker.commerce.price(10000, 1000000),
//           detail:faker.lorem.paragraph(3),
//       },
//       });
//     }
//   },
// };
