using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using WSUniversalLib;

namespace UnitTestProject
{
    [TestClass]
    public class CalculationTests
    {
        [TestMethod]
        public void GetQuantityForProduct_NonExistentProductType()
        {
            int excepted = -1;

            int actual = Calculation.GetQuantityForProduct(4, 1, 15, 20, 45);

            Assert.AreEqual(excepted, actual);
        }

        [TestMethod]
        public void GetQuantityForProduct_NonExistentMaterialType()
        {
            int excepted = -1;

            int actual = Calculation.GetQuantityForProduct(3, 3, 15, 20, 45);

            Assert.AreEqual(excepted, actual);
        }

        [TestMethod]
        public void GetQuantityForProduct_NonExistentMaterialTypeAndProductType()
        {
            int excepted = -1;

            int actual = Calculation.GetQuantityForProduct(4, 4, 15, 20, 45);

            Assert.AreEqual(excepted, actual);
        }

        [TestMethod]
        public void GetQuantityForProduct_CorrectData()
        {
            int excepted = 114148;

            int actual = Calculation.GetQuantityForProduct(3,1,15,20,45);

            Assert.AreEqual(excepted,actual);
        }

        [TestMethod]
        public void GetQuantityForProduct_LengthLessThanZero()
        {
            int excepted = -1;

            int actual = Calculation.GetQuantityForProduct(3, 1, 15, 20, -30);

            Assert.AreEqual(excepted, actual);
        }

        [TestMethod]
        public void GetQuantityForProduct_LengthEqualsZero()
        {
            int excepted = -1;

            int actual = Calculation.GetQuantityForProduct(3, 1, 15, 20, 0);

            Assert.AreEqual(excepted, actual);
        }

        [TestMethod]
        public void GetQuantityForProduct_WidthLessThanZero()
        {
            int excepted = -1;

            int actual = Calculation.GetQuantityForProduct(3, 1, 15, -2, 45);

            Assert.AreEqual(excepted, actual);
        }

        [TestMethod]
        public void GetQuantityForProduct_WidthEqualsZero()
        {
            int excepted = -1;

            int actual = Calculation.GetQuantityForProduct(3, 1, 15, 0, 45);

            Assert.AreEqual(excepted, actual);
        }

        [TestMethod]
        public void GetQuantityForProduct_CountLessThanZero()
        {
            int excepted = -1;

            int actual = Calculation.GetQuantityForProduct(3, 1, -15, 20, 45);

            Assert.AreEqual(excepted, actual);
        }

        [TestMethod]
        public void GetQuantityForProduct_CountEqualsZero()
        {
            int excepted = -1;

            int actual = Calculation.GetQuantityForProduct(3, 1, 0, 20, 45);

            Assert.AreEqual(excepted, actual);
        }
    }
}
