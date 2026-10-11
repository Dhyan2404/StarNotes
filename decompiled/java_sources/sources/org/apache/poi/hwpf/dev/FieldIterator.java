package org.apache.poi.hwpf.dev;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class FieldIterator {
    protected int offset;

    public String calcSize(int i, String str, String str2, String str3) {
        if (str3.startsWith("custom:")) {
            return " + " + RecordUtil.getFieldName(i, str, 0) + ".getSize()";
        }
        if ("var".equals(str2)) {
            return " +  ( " + RecordUtil.getFieldName(i, str, 0) + ".length() *2)";
        }
        if (!"varword".equals(str2)) {
            return " + " + str2;
        }
        return " + " + RecordUtil.getFieldName(i, str, 0) + ".length * 2 + 2";
    }

    public String fillDecoder(String str, String str2) {
        String str3;
        if (str2.equals("short[]")) {
            str3 = "LittleEndian.getShortArray( data, 0x" + Integer.toHexString(this.offset) + " + offset, " + str + " )";
        } else if (str2.equals("byte[]")) {
            str3 = "LittleEndian.getByteArray( data, 0x" + Integer.toHexString(this.offset) + " + offset," + str + " )";
        } else if (str2.equals("BorderCode")) {
            str3 = "new BorderCode( data, 0x" + Integer.toHexString(this.offset) + " + offset )";
        } else if (str2.equals("Colorref")) {
            str3 = "new Colorref( data, 0x" + Integer.toHexString(this.offset) + " + offset )";
        } else if (str2.equals("DateAndTime")) {
            str3 = "new DateAndTime( data, 0x" + Integer.toHexString(this.offset) + " + offset )";
        } else if (str2.equals("Grfhic")) {
            str3 = "new Grfhic( data, 0x" + Integer.toHexString(this.offset) + " + offset )";
        } else if (str.equals("2")) {
            str3 = "LittleEndian.getShort( data, 0x" + Integer.toHexString(this.offset) + " + offset )";
        } else if (str.equals("4")) {
            if (str2.equals("long")) {
                str3 = "LittleEndian.getUInt( data, 0x" + Integer.toHexString(this.offset) + " + offset )";
            } else {
                str3 = "LittleEndian.getInt( data, 0x" + Integer.toHexString(this.offset) + " + offset )";
            }
        } else if (str.equals("1")) {
            if (str2.equals("short")) {
                str3 = "LittleEndian.getUByte( data, 0x" + Integer.toHexString(this.offset) + " + offset )";
            } else if (str2.equals("int") || str2.equals("long")) {
                str3 = "LittleEndian.getUnsignedByte( data, 0x" + Integer.toHexString(this.offset) + " + offset )";
            } else {
                str3 = "data[ 0x" + Integer.toHexString(this.offset) + " + offset ]";
            }
        } else if (str2.equals("double")) {
            str3 = "LittleEndian.getDouble(data, 0x" + Integer.toHexString(this.offset) + " + offset )";
        } else {
            str3 = "";
        }
        try {
            this.offset += Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
        return str3;
    }

    public String serialiseEncoder(int i, String str, String str2, String str3) {
        String str4;
        String fieldName = RecordUtil.getFieldName(i, str, 0);
        if (str3.equals("short[]")) {
            str4 = "LittleEndian.putShortArray( data, 0x" + Integer.toHexString(this.offset) + " + offset, " + fieldName + " );";
        } else if (str3.equals("byte[]")) {
            str4 = "System.arraycopy( " + fieldName + ", 0, data, 0x" + Integer.toHexString(this.offset) + " + offset, " + fieldName + ".length );";
        } else if (str3.equals("BorderCode")) {
            str4 = fieldName + ".serialize( data, 0x" + Integer.toHexString(this.offset) + " + offset );";
        } else if (str3.equals("Colorref")) {
            str4 = fieldName + ".serialize( data, 0x" + Integer.toHexString(this.offset) + " + offset );";
        } else if (str3.equals("DateAndTime")) {
            str4 = fieldName + ".serialize( data, 0x" + Integer.toHexString(this.offset) + " + offset );";
        } else if (str3.equals("Grfhic")) {
            str4 = fieldName + ".serialize( data, 0x" + Integer.toHexString(this.offset) + " + offset );";
        } else if (str2.equals("2")) {
            if (str3.equals("short")) {
                str4 = "LittleEndian.putShort( data, 0x" + Integer.toHexString(this.offset) + " + offset, " + fieldName + " );";
            } else if (str3.equals("int")) {
                str4 = "LittleEndian.putUShort( data, 0x" + Integer.toHexString(this.offset) + " + offset, " + fieldName + " );";
            } else {
                str4 = "LittleEndian.putShort( data, 0x" + Integer.toHexString(this.offset) + " + offset, (short)" + fieldName + " );";
            }
        } else if (str2.equals("4")) {
            if (str3.equals("long")) {
                str4 = "LittleEndian.putUInt( data, 0x" + Integer.toHexString(this.offset) + " + offset, " + fieldName + " );";
            } else {
                str4 = "LittleEndian.putInt( data, 0x" + Integer.toHexString(this.offset) + " + offset, " + fieldName + " );";
            }
        } else if (str2.equals("1")) {
            if (str3.equals("byte")) {
                str4 = "data[ 0x" + Integer.toHexString(this.offset) + " + offset ] = " + fieldName + AndroidTreeView.f47214k;
            } else {
                str4 = "LittleEndian.putUByte( data, 0x" + Integer.toHexString(this.offset) + " + offset, " + fieldName + " );";
            }
        } else if (str3.equals("double")) {
            str4 = "LittleEndian.putDouble(data, 0x" + Integer.toHexString(this.offset) + " + offset, " + fieldName + " );";
        } else {
            str4 = "";
        }
        try {
            this.offset += Integer.parseInt(str2);
        } catch (NumberFormatException unused) {
        }
        return str4;
    }
}
