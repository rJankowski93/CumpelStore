package com.packt.util;

import org.apache.commons.beanutils.BeanUtilsBean;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.BeanWrapper;
import org.springframework.beans.BeanWrapperImpl;

import java.util.HashSet;
import java.util.Set;

public class ObjectUtil extends BeanUtilsBean {

    public static void copyNotNullProperties(Object source, Object target) {
        BeanUtils.copyProperties(source, target, getNotNullPropertyNames(source));
    }

    private static String[] getNotNullPropertyNames(Object sourceObject) {
        final BeanWrapper sourceBean = new BeanWrapperImpl(sourceObject);
        java.beans.PropertyDescriptor[] pds = sourceBean.getPropertyDescriptors();
        Set<String> emptyNames = new HashSet<>();
        for (java.beans.PropertyDescriptor pd : pds) {
            Object sourceValue = sourceBean.getPropertyValue(pd.getName());
            if (sourceValue == null) emptyNames.add(pd.getName());
        }
        String[] result = new String[emptyNames.size()];
        return emptyNames.toArray(result);
    }
}

