package com.sun.org.apache.xerces.internal.p056xs.datatypes;

import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes10.dex */
public interface XSDecimal {
    BigDecimal getBigDecimal();

    BigInteger getBigInteger() throws NumberFormatException;

    byte getByte() throws NumberFormatException;

    int getInt() throws NumberFormatException;

    long getLong() throws NumberFormatException;

    short getShort() throws NumberFormatException;
}
