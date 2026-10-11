package com.sun.org.apache.xml.internal.resolver;

import java.util.Hashtable;
import java.util.Vector;

/* loaded from: classes10.dex */
public class CatalogEntry {
    protected static int nextEntry;
    protected Vector args;
    protected int entryType;
    protected static Hashtable entryTypes = new Hashtable();
    protected static Vector entryArgs = new Vector();

    public CatalogEntry() {
        this.entryType = 0;
        this.args = null;
    }

    public static int addEntryType(String str, int i) {
        entryTypes.put(str, new Integer(nextEntry));
        entryArgs.add(nextEntry, new Integer(i));
        int i2 = nextEntry + 1;
        nextEntry = i2;
        return i2 - 1;
    }

    public static int getEntryArgCount(String str) throws CatalogException {
        return getEntryArgCount(getEntryType(str));
    }

    public static int getEntryType(String str) throws CatalogException {
        if (entryTypes.containsKey(str)) {
            Integer num = (Integer) entryTypes.get(str);
            if (num != null) {
                return num.intValue();
            }
            throw new CatalogException(3);
        }
        throw new CatalogException(3);
    }

    public String getEntryArg(int i) {
        try {
            return (String) this.args.get(i);
        } catch (ArrayIndexOutOfBoundsException unused) {
            return null;
        }
    }

    public void setEntryArg(int i, String str) throws ArrayIndexOutOfBoundsException {
        this.args.set(i, str);
    }

    public static int getEntryArgCount(int i) throws CatalogException {
        try {
            return ((Integer) entryArgs.get(i)).intValue();
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new CatalogException(3);
        }
    }

    public CatalogEntry(String str, Vector vector) throws CatalogException {
        this.entryType = 0;
        this.args = null;
        Integer num = (Integer) entryTypes.get(str);
        if (num != null) {
            int intValue = num.intValue();
            try {
                if (((Integer) entryArgs.get(intValue)).intValue() == vector.size()) {
                    this.entryType = intValue;
                    this.args = vector;
                    return;
                }
                throw new CatalogException(2);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new CatalogException(3);
            }
        }
        throw new CatalogException(3);
    }

    public int getEntryType() {
        return this.entryType;
    }

    public CatalogEntry(int i, Vector vector) throws CatalogException {
        this.entryType = 0;
        this.args = null;
        try {
            if (((Integer) entryArgs.get(i)).intValue() == vector.size()) {
                this.entryType = i;
                this.args = vector;
                return;
            }
            throw new CatalogException(2);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new CatalogException(3);
        }
    }
}
