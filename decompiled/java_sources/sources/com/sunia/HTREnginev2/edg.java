package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.FieldReaderObject;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.util.JDKUtils;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Date;
import java.util.Map;

/* loaded from: classes3.dex */
public class edg<T> extends FieldReaderObject<T> {
    public edg(String str, Type type, Class cls, int i, long j, String str2, Object obj, Field field) {
        super(str, type == null ? field.getType() : type, cls, i, j, str2, null, obj, null, field, null);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, boolean z) {
        long j = this.fieldOffset;
        if (j != -1 && this.fieldClass == Boolean.TYPE) {
            JDKUtils.UNSAFE.putBoolean(t, j, z);
            return;
        }
        try {
            this.field.setBoolean(t, z);
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }

    /* renamed from: b */
    public final void m53953b(T t, Object obj) {
        Class cls = this.fieldClass;
        if (cls == Integer.TYPE) {
            if (obj instanceof Number) {
                accept((edg<T>) t, ((Number) obj).intValue());
                return;
            }
        } else if (cls == Long.TYPE) {
            if (obj instanceof Number) {
                accept((edg<T>) t, ((Number) obj).longValue());
                return;
            }
        } else if (cls == Float.TYPE) {
            if (obj instanceof Number) {
                accept((edg<T>) t, ((Number) obj).floatValue());
                return;
            }
        } else if (cls == Double.TYPE) {
            if (obj instanceof Number) {
                accept((edg<T>) t, ((Number) obj).doubleValue());
                return;
            }
        } else if (cls == Short.TYPE) {
            if (obj instanceof Number) {
                accept((edg<T>) t, ((Number) obj).shortValue());
                return;
            }
        } else if (cls == Byte.TYPE) {
            if (obj instanceof Number) {
                accept((edg<T>) t, ((Number) obj).byteValue());
                return;
            }
        } else if (cls == Character.TYPE) {
            if (obj instanceof Character) {
                accept((edg<T>) t, ((Character) obj).charValue());
                return;
            }
        } else if (cls == Boolean.TYPE && (obj instanceof Boolean)) {
            accept((edg<T>) t, ((Boolean) obj).booleanValue());
            return;
        }
        throw new JSONException("set " + this.fieldName + " error, type not support " + obj.getClass());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, byte b) {
        long j = this.fieldOffset;
        if (j != -1 && this.fieldClass == Byte.TYPE) {
            JDKUtils.UNSAFE.putByte(t, j, b);
            return;
        }
        try {
            this.field.setByte(t, b);
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, short s) {
        long j = this.fieldOffset;
        if (j != -1 && this.fieldClass == Short.TYPE) {
            JDKUtils.UNSAFE.putShort(t, j, s);
            return;
        }
        try {
            this.field.setShort(t, s);
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, int i) {
        long j = this.fieldOffset;
        if (j != -1 && this.fieldClass == Integer.TYPE) {
            JDKUtils.UNSAFE.putInt(t, j, i);
            return;
        }
        try {
            this.field.setInt(t, i);
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, long j) {
        long j2 = this.fieldOffset;
        if (j2 != -1 && this.fieldClass == Long.TYPE) {
            JDKUtils.UNSAFE.putLong(t, j2, j);
            return;
        }
        try {
            this.field.setLong(t, j);
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, float f) {
        long j = this.fieldOffset;
        if (j != -1 && this.fieldClass == Float.TYPE) {
            JDKUtils.UNSAFE.putFloat(t, j, f);
            return;
        }
        try {
            this.field.setFloat(t, f);
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, double d) {
        long j = this.fieldOffset;
        if (j != -1 && this.fieldClass == Double.TYPE) {
            JDKUtils.UNSAFE.putDouble(t, j, d);
            return;
        }
        try {
            this.field.setDouble(t, d);
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, char c) {
        long j = this.fieldOffset;
        if (j != -1 && this.fieldClass == Character.TYPE) {
            JDKUtils.UNSAFE.putChar(t, j, c);
            return;
        }
        try {
            this.field.setChar(t, c);
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        if (obj == null) {
            if ((this.features & JSONReader.Feature.IgnoreSetNullValue.mask) != 0) {
                return;
            }
        } else {
            if (this.fieldClass.isPrimitive()) {
                m53953b(t, obj);
                return;
            }
            Type type = this.fieldType;
            Class cls = this.fieldClass;
            if (type != cls && Map.class.isAssignableFrom(cls) && (obj instanceof Map) && this.fieldClass != Map.class) {
                obj = getObjectReader(JSONFactory.createReadContext()).createInstance((Map) obj, new JSONReader.Feature[0]);
            } else if (this.fieldClass != obj.getClass() && !this.fieldClass.isInstance(obj)) {
                if (obj instanceof String) {
                    String str = (String) obj;
                    if (this.fieldClass == Date.class) {
                        String str2 = this.format;
                        if (str2 != null) {
                            obj = DateUtils.parseDate(str, str2, DateUtils.DEFAULT_ZONE_ID);
                        } else {
                            long parseMillis = DateUtils.parseMillis(str, DateUtils.DEFAULT_ZONE_ID);
                            obj = parseMillis == 0 ? null : new Date(parseMillis);
                        }
                    }
                }
                if (!this.fieldClass.isInstance(obj)) {
                    obj = TypeUtils.cast(obj, this.fieldType);
                }
            }
        }
        long j = this.fieldOffset;
        if (j != -1) {
            JDKUtils.UNSAFE.putObject(t, j, obj);
            return;
        }
        try {
            this.field.set(t, obj);
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }
}
