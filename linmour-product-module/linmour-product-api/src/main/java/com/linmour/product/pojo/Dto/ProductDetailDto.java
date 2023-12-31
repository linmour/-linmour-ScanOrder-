package com.linmour.product.pojo.Dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ProductDetailDto  implements  Serializable  {

    private Long id;

    /**
     * 商品名字
     */
     
    private String name;

    /**
     *
     */
     
    private Long shopId;

    /**
     * 商品简介
     */
     
    private String intro;

    private Byte valueSpec;


    private Byte nonValueSpec;

    /**
     * 商品状态 0下架 1上架
     */
     
    private Integer status;

    /**
     * 分类id
     */
     
    private Long sortId;

    /**
     * 商品图
     */
     
    private String picture;

    /**
     * 如果商品有规格就显示价格最低的配置
     */
     
    private BigDecimal price;
    private String sort;
    private List<NonValueDto> nonValueList;
    private List<ValueDto> valueList;
    private List<InventoryDto> inventoryList;
    private Integer quantity;


}
