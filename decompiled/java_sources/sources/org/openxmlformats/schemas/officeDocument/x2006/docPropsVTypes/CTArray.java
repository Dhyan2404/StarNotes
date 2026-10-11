package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlByte;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlDecimal;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlShort;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.XmlUnsignedShort;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.STArrayBaseType;

/* loaded from: classes14.dex */
public interface CTArray extends XmlObject {
    public static final DocumentFactory<CTArray> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTArray> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctarrayd5b6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    void addBool(boolean z);

    void addBstr(String str);

    void addCy(String str);

    void addDate(Calendar calendar);

    void addDecimal(BigDecimal bigDecimal);

    void addError(String str);

    void addI1(byte b);

    void addI2(short s);

    void addI4(int i);

    void addInt(int i);

    XmlBoolean addNewBool();

    XmlString addNewBstr();

    STCy addNewCy();

    XmlDateTime addNewDate();

    XmlDecimal addNewDecimal();

    STError addNewError();

    XmlByte addNewI1();

    XmlShort addNewI2();

    XmlInt addNewI4();

    XmlInt addNewInt();

    XmlFloat addNewR4();

    XmlDouble addNewR8();

    XmlUnsignedByte addNewUi1();

    XmlUnsignedShort addNewUi2();

    XmlUnsignedInt addNewUi4();

    XmlUnsignedInt addNewUint();

    CTVariant addNewVariant();

    void addR4(float f);

    void addR8(double d);

    void addUi1(short s);

    void addUi2(int i);

    void addUi4(long j);

    void addUint(long j);

    STArrayBaseType.Enum getBaseType();

    boolean getBoolArray(int i);

    boolean[] getBoolArray();

    List<Boolean> getBoolList();

    String getBstrArray(int i);

    String[] getBstrArray();

    List<String> getBstrList();

    String getCyArray(int i);

    String[] getCyArray();

    List<String> getCyList();

    Calendar getDateArray(int i);

    Calendar[] getDateArray();

    List<Calendar> getDateList();

    BigDecimal getDecimalArray(int i);

    BigDecimal[] getDecimalArray();

    List<BigDecimal> getDecimalList();

    String getErrorArray(int i);

    String[] getErrorArray();

    List<String> getErrorList();

    byte getI1Array(int i);

    byte[] getI1Array();

    List<Byte> getI1List();

    short getI2Array(int i);

    short[] getI2Array();

    List<Short> getI2List();

    int getI4Array(int i);

    int[] getI4Array();

    List<Integer> getI4List();

    int getIntArray(int i);

    int[] getIntArray();

    List<Integer> getIntList();

    int getLBounds();

    float getR4Array(int i);

    float[] getR4Array();

    List<Float> getR4List();

    double getR8Array(int i);

    double[] getR8Array();

    List<Double> getR8List();

    int getUBounds();

    short getUi1Array(int i);

    short[] getUi1Array();

    List<Short> getUi1List();

    int getUi2Array(int i);

    int[] getUi2Array();

    List<Integer> getUi2List();

    long getUi4Array(int i);

    long[] getUi4Array();

    List<Long> getUi4List();

    long getUintArray(int i);

    long[] getUintArray();

    List<Long> getUintList();

    CTVariant getVariantArray(int i);

    CTVariant[] getVariantArray();

    List<CTVariant> getVariantList();

    void insertBool(int i, boolean z);

    void insertBstr(int i, String str);

    void insertCy(int i, String str);

    void insertDate(int i, Calendar calendar);

    void insertDecimal(int i, BigDecimal bigDecimal);

    void insertError(int i, String str);

    void insertI1(int i, byte b);

    void insertI2(int i, short s);

    void insertI4(int i, int i2);

    void insertInt(int i, int i2);

    XmlBoolean insertNewBool(int i);

    XmlString insertNewBstr(int i);

    STCy insertNewCy(int i);

    XmlDateTime insertNewDate(int i);

    XmlDecimal insertNewDecimal(int i);

    STError insertNewError(int i);

    XmlByte insertNewI1(int i);

    XmlShort insertNewI2(int i);

    XmlInt insertNewI4(int i);

    XmlInt insertNewInt(int i);

    XmlFloat insertNewR4(int i);

    XmlDouble insertNewR8(int i);

    XmlUnsignedByte insertNewUi1(int i);

    XmlUnsignedShort insertNewUi2(int i);

    XmlUnsignedInt insertNewUi4(int i);

    XmlUnsignedInt insertNewUint(int i);

    CTVariant insertNewVariant(int i);

    void insertR4(int i, float f);

    void insertR8(int i, double d);

    void insertUi1(int i, short s);

    void insertUi2(int i, int i2);

    void insertUi4(int i, long j);

    void insertUint(int i, long j);

    void removeBool(int i);

    void removeBstr(int i);

    void removeCy(int i);

    void removeDate(int i);

    void removeDecimal(int i);

    void removeError(int i);

    void removeI1(int i);

    void removeI2(int i);

    void removeI4(int i);

    void removeInt(int i);

    void removeR4(int i);

    void removeR8(int i);

    void removeUi1(int i);

    void removeUi2(int i);

    void removeUi4(int i);

    void removeUint(int i);

    void removeVariant(int i);

    void setBaseType(STArrayBaseType.Enum r1);

    void setBoolArray(int i, boolean z);

    void setBoolArray(boolean[] zArr);

    void setBstrArray(int i, String str);

    void setBstrArray(String[] strArr);

    void setCyArray(int i, String str);

    void setCyArray(String[] strArr);

    void setDateArray(int i, Calendar calendar);

    void setDateArray(Calendar[] calendarArr);

    void setDecimalArray(int i, BigDecimal bigDecimal);

    void setDecimalArray(BigDecimal[] bigDecimalArr);

    void setErrorArray(int i, String str);

    void setErrorArray(String[] strArr);

    void setI1Array(int i, byte b);

    void setI1Array(byte[] bArr);

    void setI2Array(int i, short s);

    void setI2Array(short[] sArr);

    void setI4Array(int i, int i2);

    void setI4Array(int[] iArr);

    void setIntArray(int i, int i2);

    void setIntArray(int[] iArr);

    void setLBounds(int i);

    void setR4Array(int i, float f);

    void setR4Array(float[] fArr);

    void setR8Array(int i, double d);

    void setR8Array(double[] dArr);

    void setUBounds(int i);

    void setUi1Array(int i, short s);

    void setUi1Array(short[] sArr);

    void setUi2Array(int i, int i2);

    void setUi2Array(int[] iArr);

    void setUi4Array(int i, long j);

    void setUi4Array(long[] jArr);

    void setUintArray(int i, long j);

    void setUintArray(long[] jArr);

    void setVariantArray(int i, CTVariant cTVariant);

    void setVariantArray(CTVariant[] cTVariantArr);

    int sizeOfBoolArray();

    int sizeOfBstrArray();

    int sizeOfCyArray();

    int sizeOfDateArray();

    int sizeOfDecimalArray();

    int sizeOfErrorArray();

    int sizeOfI1Array();

    int sizeOfI2Array();

    int sizeOfI4Array();

    int sizeOfIntArray();

    int sizeOfR4Array();

    int sizeOfR8Array();

    int sizeOfUi1Array();

    int sizeOfUi2Array();

    int sizeOfUi4Array();

    int sizeOfUintArray();

    int sizeOfVariantArray();

    STArrayBaseType xgetBaseType();

    XmlBoolean xgetBoolArray(int i);

    XmlBoolean[] xgetBoolArray();

    List<XmlBoolean> xgetBoolList();

    XmlString xgetBstrArray(int i);

    XmlString[] xgetBstrArray();

    List<XmlString> xgetBstrList();

    STCy xgetCyArray(int i);

    STCy[] xgetCyArray();

    List<STCy> xgetCyList();

    XmlDateTime xgetDateArray(int i);

    XmlDateTime[] xgetDateArray();

    List<XmlDateTime> xgetDateList();

    XmlDecimal xgetDecimalArray(int i);

    XmlDecimal[] xgetDecimalArray();

    List<XmlDecimal> xgetDecimalList();

    STError xgetErrorArray(int i);

    STError[] xgetErrorArray();

    List<STError> xgetErrorList();

    XmlByte xgetI1Array(int i);

    XmlByte[] xgetI1Array();

    List<XmlByte> xgetI1List();

    XmlShort xgetI2Array(int i);

    XmlShort[] xgetI2Array();

    List<XmlShort> xgetI2List();

    XmlInt xgetI4Array(int i);

    XmlInt[] xgetI4Array();

    List<XmlInt> xgetI4List();

    XmlInt xgetIntArray(int i);

    XmlInt[] xgetIntArray();

    List<XmlInt> xgetIntList();

    XmlInt xgetLBounds();

    XmlFloat xgetR4Array(int i);

    XmlFloat[] xgetR4Array();

    List<XmlFloat> xgetR4List();

    XmlDouble xgetR8Array(int i);

    XmlDouble[] xgetR8Array();

    List<XmlDouble> xgetR8List();

    XmlInt xgetUBounds();

    XmlUnsignedByte xgetUi1Array(int i);

    XmlUnsignedByte[] xgetUi1Array();

    List<XmlUnsignedByte> xgetUi1List();

    XmlUnsignedShort xgetUi2Array(int i);

    XmlUnsignedShort[] xgetUi2Array();

    List<XmlUnsignedShort> xgetUi2List();

    XmlUnsignedInt xgetUi4Array(int i);

    XmlUnsignedInt[] xgetUi4Array();

    List<XmlUnsignedInt> xgetUi4List();

    XmlUnsignedInt xgetUintArray(int i);

    XmlUnsignedInt[] xgetUintArray();

    List<XmlUnsignedInt> xgetUintList();

    void xsetBaseType(STArrayBaseType sTArrayBaseType);

    void xsetBoolArray(int i, XmlBoolean xmlBoolean);

    void xsetBoolArray(XmlBoolean[] xmlBooleanArr);

    void xsetBstrArray(int i, XmlString xmlString);

    void xsetBstrArray(XmlString[] xmlStringArr);

    void xsetCyArray(int i, STCy sTCy);

    void xsetCyArray(STCy[] sTCyArr);

    void xsetDateArray(int i, XmlDateTime xmlDateTime);

    void xsetDateArray(XmlDateTime[] xmlDateTimeArr);

    void xsetDecimalArray(int i, XmlDecimal xmlDecimal);

    void xsetDecimalArray(XmlDecimal[] xmlDecimalArr);

    void xsetErrorArray(int i, STError sTError);

    void xsetErrorArray(STError[] sTErrorArr);

    void xsetI1Array(int i, XmlByte xmlByte);

    void xsetI1Array(XmlByte[] xmlByteArr);

    void xsetI2Array(int i, XmlShort xmlShort);

    void xsetI2Array(XmlShort[] xmlShortArr);

    void xsetI4Array(int i, XmlInt xmlInt);

    void xsetI4Array(XmlInt[] xmlIntArr);

    void xsetIntArray(int i, XmlInt xmlInt);

    void xsetIntArray(XmlInt[] xmlIntArr);

    void xsetLBounds(XmlInt xmlInt);

    void xsetR4Array(int i, XmlFloat xmlFloat);

    void xsetR4Array(XmlFloat[] xmlFloatArr);

    void xsetR8Array(int i, XmlDouble xmlDouble);

    void xsetR8Array(XmlDouble[] xmlDoubleArr);

    void xsetUBounds(XmlInt xmlInt);

    void xsetUi1Array(int i, XmlUnsignedByte xmlUnsignedByte);

    void xsetUi1Array(XmlUnsignedByte[] xmlUnsignedByteArr);

    void xsetUi2Array(int i, XmlUnsignedShort xmlUnsignedShort);

    void xsetUi2Array(XmlUnsignedShort[] xmlUnsignedShortArr);

    void xsetUi4Array(int i, XmlUnsignedInt xmlUnsignedInt);

    void xsetUi4Array(XmlUnsignedInt[] xmlUnsignedIntArr);

    void xsetUintArray(int i, XmlUnsignedInt xmlUnsignedInt);

    void xsetUintArray(XmlUnsignedInt[] xmlUnsignedIntArr);
}
