package com.linmour.product.controller.app.sort;

import com.linmour.common.dtos.Result;
import com.linmour.product.service.ProductSortService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("/app/product/sort")
public class AppSortController {

    @Resource
    private ProductSortService productSortService;
    @GetMapping("/getProductSort")
    public Result getProductSort(){
        Result productSort = productSortService.getProductSort();
        return (productSort) ;
    }

}
