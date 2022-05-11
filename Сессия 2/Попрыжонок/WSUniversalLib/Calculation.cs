using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WSUniversalLib
{
    public static class Calculation
    {
       public static int GetQuantityForProduct(int productType, int materialType, int count, float width, float length)
       {
            var square = width * length;
            var materialCount = square * count;
            if(count <=0) 
                return -1;

            if (width <= 0)
                return -1;

            if (length <= 0)
                return -1;

            switch (productType)
            {
                case 1:
                    {
                        materialCount *= 1.1f;
                        break;
                    }
                case 2:
                    {
                        materialCount *= 2.5f;
                        break;
                    }
                case 3:
                    {
                        materialCount *= 8.43f;
                        break;
                    }

                default:
                    {
                        return -1;
                    }
            }


            switch (materialType)
            {
                case 1:
                    {
                        materialCount = materialCount + materialCount*0.003f;
                        break;
                    }
                case 2:
                    {
                        materialCount = materialCount + materialCount * 0.0012f;
                        break;
                    }
                default:
                    {
                        return -1;
                    }
            }



            return ((int)Math.Ceiling(materialCount)+1);
       }
    }
}
