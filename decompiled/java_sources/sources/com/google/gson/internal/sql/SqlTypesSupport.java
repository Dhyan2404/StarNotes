package com.google.gson.internal.sql;

import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import com.sunia.HTREnginev2.xwm;
import com.sunia.HTREnginev2.ywm;
import com.sunia.HTREnginev2.zwm;
import java.sql.Timestamp;
import java.util.Date;

/* loaded from: classes6.dex */
public final class SqlTypesSupport {
    public static final DefaultDateTypeAdapter.DateType<? extends Date> DATE_DATE_TYPE;
    public static final TypeAdapterFactory DATE_FACTORY;
    public static final boolean SUPPORTS_SQL_TYPES;
    public static final DefaultDateTypeAdapter.DateType<? extends Date> TIMESTAMP_DATE_TYPE;
    public static final TypeAdapterFactory TIMESTAMP_FACTORY;
    public static final TypeAdapterFactory TIME_FACTORY;

    /* renamed from: com.google.gson.internal.sql.SqlTypesSupport$a */
    /* loaded from: classes6.dex */
    public class C6604a extends DefaultDateTypeAdapter.DateType<java.sql.Date> {
        public C6604a(Class cls) {
            super(cls);
        }

        @Override // com.google.gson.internal.bind.DefaultDateTypeAdapter.DateType
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public java.sql.Date deserialize(Date date) {
            return new java.sql.Date(date.getTime());
        }
    }

    /* renamed from: com.google.gson.internal.sql.SqlTypesSupport$b */
    /* loaded from: classes6.dex */
    public class C6605b extends DefaultDateTypeAdapter.DateType<Timestamp> {
        public C6605b(Class cls) {
            super(cls);
        }

        @Override // com.google.gson.internal.bind.DefaultDateTypeAdapter.DateType
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Timestamp deserialize(Date date) {
            return new Timestamp(date.getTime());
        }
    }

    static {
        boolean z;
        try {
            Class.forName("java.sql.Date");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        SUPPORTS_SQL_TYPES = z;
        if (z) {
            DATE_DATE_TYPE = new C6604a(java.sql.Date.class);
            TIMESTAMP_DATE_TYPE = new C6605b(Timestamp.class);
            DATE_FACTORY = xwm.f90141b;
            TIME_FACTORY = ywm.f91140b;
            TIMESTAMP_FACTORY = zwm.f92273b;
            return;
        }
        DATE_DATE_TYPE = null;
        TIMESTAMP_DATE_TYPE = null;
        DATE_FACTORY = null;
        TIME_FACTORY = null;
        TIMESTAMP_FACTORY = null;
    }
}
