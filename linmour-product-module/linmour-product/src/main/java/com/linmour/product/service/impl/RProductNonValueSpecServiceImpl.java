package com.linmour.product.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.linmour.product.pojo.Do.RProductNonValueSpec;
import com.linmour.product.service.RProductNonValueSpecService;
import com.linmour.product.mapper.RProductNonValueSpecMapper;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @author linmour
* @description 针对表【r_product_non_value_spec】的数据库操作Service实现
* @createDate 2023-08-12 18:34:04
*/
@Service
public class RProductNonValueSpecServiceImpl extends ServiceImpl<RProductNonValueSpecMapper, RProductNonValueSpec>
    implements RProductNonValueSpecService{

    @Override
    public List<Long> getNonValueId(Long productId) {
        return this.listObjs(
                new LambdaQueryWrapper<RProductNonValueSpec>()
                        .select(RProductNonValueSpec::getNonValueId)
                        .eq(RProductNonValueSpec::getProductId,productId), o -> Long.valueOf(o.toString()));

    }
}




