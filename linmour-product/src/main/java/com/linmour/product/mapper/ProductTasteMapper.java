package com.linmour.product.mapper;

import com.linmour.product.pojo.Do.ProductTaste;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
* @author linmour
* @description 针对表【product_taste】的数据库操作Mapper
* @createDate 2023-07-29 14:29:16
* @Entity com.linmour.product.pojo.Do.ProductTaste
*/
public interface ProductTasteMapper extends BaseMapper<ProductTaste> {

    void deleteTaste(@Param("productId") Long productId);
}




