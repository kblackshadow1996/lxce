import serviceAxios from "./index";


export const getProductList = (params) => {
  return serviceAxios({
    url: "/product",
    method: "get",
    params,
  });
};
export const getCategory = () => {
  return serviceAxios({
    url: "/category",
    method: "get",
  });
};
export const getCompany = () => {
  return serviceAxios({
    url: "/company/lxce",
    method: "get",
  });
};
export default {getProductList,getCategory,getCompany};
// /company/lxce
