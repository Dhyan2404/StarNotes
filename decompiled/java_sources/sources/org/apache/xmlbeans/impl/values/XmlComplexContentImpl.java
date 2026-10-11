package org.apache.xmlbeans.impl.values;

import com.sunia.HTREnginev2.awo;
import com.sunia.HTREnginev2.dwo;
import com.sunia.HTREnginev2.fwo;
import com.sunia.HTREnginev2.kvo;
import com.sunia.HTREnginev2.kwo;
import com.sunia.HTREnginev2.lvo;
import com.sunia.HTREnginev2.mvo;
import com.sunia.HTREnginev2.nvo;
import com.sunia.HTREnginev2.pvo;
import com.sunia.HTREnginev2.rvo;
import com.sunia.HTREnginev2.xvo;
import com.sunia.HTREnginev2.yvo;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.function.BiConsumer;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.GDate;
import org.apache.xmlbeans.GDuration;
import org.apache.xmlbeans.QNameSet;
import org.apache.xmlbeans.SchemaProperty;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.SchemaTypeImpl;
import org.apache.xmlbeans.impl.schema.SchemaTypeVisitorImpl;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.apache.xmlbeans.impl.values.XmlObjectBase;

/* loaded from: classes13.dex */
public class XmlComplexContentImpl extends XmlObjectBase {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final SchemaTypeImpl _schemaType;

    public XmlComplexContentImpl(SchemaType schemaType) {
        this._schemaType = (SchemaTypeImpl) schemaType;
        initComplexType(true, true);
    }

    private <T> void commonSetterHelper(QName qName, QNameSet qNameSet, T[] tArr, BiConsumer<XmlObjectBase, Integer> biConsumer) {
        commonSetterHelper(qName, qNameSet, tArr == null ? 0 : tArr.length, biConsumer);
    }

    private <T> void commonSetterHelper2(QName qName, QNameSet qNameSet, T[] tArr, BiConsumer<XmlObjectBase, T> biConsumer) {
        int i = 0;
        int length = tArr == null ? 0 : tArr.length;
        TypeStore typeStore = get_store();
        int count_elements = qNameSet == null ? typeStore.count_elements(qName) : typeStore.count_elements(qNameSet);
        while (count_elements > length) {
            if (qNameSet == null) {
                typeStore.remove_element(qName, count_elements - 1);
            } else {
                typeStore.remove_element(qNameSet, count_elements - 1);
            }
            count_elements--;
        }
        while (i < length) {
            biConsumer.accept((XmlObjectBase) (i >= count_elements ? typeStore.add_element_user(qName) : qNameSet == null ? typeStore.find_element_user(qName, i) : typeStore.find_element_user(qNameSet, i)), tArr[i]);
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$0(SimpleValue[] simpleValueArr, XmlObjectBase xmlObjectBase, Integer num) {
        simpleValueArr[num.intValue()] = xmlObjectBase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$1(SimpleValue[] simpleValueArr, XmlObjectBase xmlObjectBase, Integer num) {
        simpleValueArr[num.intValue()] = xmlObjectBase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$10(float[] fArr, XmlObjectBase xmlObjectBase, Integer num) {
        xmlObjectBase.setFloatValue(fArr[num.intValue()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$11(double[] dArr, XmlObjectBase xmlObjectBase, Integer num) {
        xmlObjectBase.setDoubleValue(dArr[num.intValue()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$12(byte[] bArr, XmlObjectBase xmlObjectBase, Integer num) {
        xmlObjectBase.setByteValue(bArr[num.intValue()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$13(short[] sArr, XmlObjectBase xmlObjectBase, Integer num) {
        xmlObjectBase.setShortValue(sArr[num.intValue()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$14(int[] iArr, XmlObjectBase xmlObjectBase, Integer num) {
        xmlObjectBase.setIntValue(iArr[num.intValue()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$15(long[] jArr, XmlObjectBase xmlObjectBase, Integer num) {
        xmlObjectBase.setLongValue(jArr[num.intValue()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$2(boolean[] zArr, XmlObjectBase xmlObjectBase, Integer num) {
        xmlObjectBase.setBooleanValue(zArr[num.intValue()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$3(float[] fArr, XmlObjectBase xmlObjectBase, Integer num) {
        xmlObjectBase.setFloatValue(fArr[num.intValue()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$4(double[] dArr, XmlObjectBase xmlObjectBase, Integer num) {
        xmlObjectBase.setDoubleValue(dArr[num.intValue()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$5(byte[] bArr, XmlObjectBase xmlObjectBase, Integer num) {
        xmlObjectBase.setByteValue(bArr[num.intValue()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$6(short[] sArr, XmlObjectBase xmlObjectBase, Integer num) {
        xmlObjectBase.setShortValue(sArr[num.intValue()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$7(int[] iArr, XmlObjectBase xmlObjectBase, Integer num) {
        xmlObjectBase.setIntValue(iArr[num.intValue()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$8(long[] jArr, XmlObjectBase xmlObjectBase, Integer num) {
        xmlObjectBase.setLongValue(jArr[num.intValue()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$arraySetterHelper$9(boolean[] zArr, XmlObjectBase xmlObjectBase, Integer num) {
        xmlObjectBase.setBooleanValue(zArr[num.intValue()]);
    }

    public SimpleValue[] arraySetterHelper(int i, QName qName) {
        final SimpleValue[] simpleValueArr = new SimpleValue[i];
        commonSetterHelper(qName, (QNameSet) null, simpleValueArr, new BiConsumer() { // from class: com.sunia.HTREnginev2.ovo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$0(simpleValueArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
        return simpleValueArr;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public String compute_text(NamespaceManager namespaceManager) {
        return null;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public boolean equal_to(XmlObject xmlObject) {
        return this._schemaType.equals(xmlObject.schemaType());
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.impl.values.TypeStoreUser
    public String get_default_attribute_text(QName qName) {
        return super.get_default_attribute_text(qName);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.impl.values.TypeStoreUser
    public String get_default_element_text(QName qName) {
        SchemaProperty elementProperty = schemaType().getElementProperty(qName);
        return elementProperty == null ? "" : elementProperty.getDefaultText();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.impl.values.TypeStoreUser
    public int get_elementflags(QName qName) {
        SchemaProperty elementProperty = schemaType().getElementProperty(qName);
        if (elementProperty == null) {
            return 0;
        }
        if (elementProperty.hasDefault() == 1 || elementProperty.hasFixed() == 1 || elementProperty.hasNillable() == 1) {
            return -1;
        }
        return (elementProperty.hasDefault() == 0 ? 0 : 2) | (elementProperty.hasFixed() == 0 ? 0 : 4) | (elementProperty.hasNillable() != 0 ? 1 : 0);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.impl.values.TypeStoreUser
    public boolean is_child_element_order_sensitive() {
        return schemaType().isOrderSensitive();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.impl.values.TypeStoreUser
    public TypeStoreVisitor new_visitor() {
        return new SchemaTypeVisitorImpl(this._schemaType.getContentModel());
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.XmlObject
    public SchemaType schemaType() {
        return this._schemaType;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public final void set_String(String str) {
        if (this._schemaType.getContentType() == 4 || this._schemaType.isNoType()) {
            super.set_String(str);
            return;
        }
        throw new IllegalArgumentException("Type does not allow for textual content: " + this._schemaType);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_nil() {
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_text(String str) {
    }

    public void unionArraySetterHelper(Object[] objArr, QName qName) {
        commonSetterHelper2(qName, null, objArr, new pvo());
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void update_from_complex_content() {
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public int value_hash_code() {
        throw new IllegalStateException("Complex types cannot be used as hash keys");
    }

    private void commonSetterHelper(QName qName, QNameSet qNameSet, int i, BiConsumer<XmlObjectBase, Integer> biConsumer) {
        TypeStoreUser find_element_user;
        TypeStore typeStore = get_store();
        int count_elements = qNameSet == null ? typeStore.count_elements(qName) : typeStore.count_elements(qNameSet);
        while (count_elements > i) {
            if (qNameSet == null) {
                typeStore.remove_element(qName, count_elements - 1);
            } else {
                typeStore.remove_element(qNameSet, count_elements - 1);
            }
            count_elements--;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 >= count_elements) {
                find_element_user = typeStore.add_element_user(qName);
            } else if (qNameSet == null) {
                find_element_user = typeStore.find_element_user(qName, i2);
            } else {
                find_element_user = typeStore.find_element_user(qNameSet, i2);
            }
            biConsumer.accept((XmlObjectBase) find_element_user, Integer.valueOf(i2));
        }
    }

    public void unionArraySetterHelper(Object[] objArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper2(qName, qNameSet, objArr, new pvo());
    }

    public SimpleValue[] arraySetterHelper(int i, QName qName, QNameSet qNameSet) {
        final SimpleValue[] simpleValueArr = new SimpleValue[i];
        commonSetterHelper(qName, qNameSet, simpleValueArr, new BiConsumer() { // from class: com.sunia.HTREnginev2.zvo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$1(simpleValueArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
        return simpleValueArr;
    }

    public void arraySetterHelper(final boolean[] zArr, QName qName) {
        commonSetterHelper(qName, (QNameSet) null, zArr == null ? 0 : zArr.length, new BiConsumer() { // from class: com.sunia.HTREnginev2.ewo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$2(zArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
    }

    public void arraySetterHelper(final float[] fArr, QName qName) {
        commonSetterHelper(qName, (QNameSet) null, fArr == null ? 0 : fArr.length, new BiConsumer() { // from class: com.sunia.HTREnginev2.jvo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$3(fArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
    }

    public void arraySetterHelper(final double[] dArr, QName qName) {
        commonSetterHelper(qName, (QNameSet) null, dArr == null ? 0 : dArr.length, new BiConsumer() { // from class: com.sunia.HTREnginev2.cwo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$4(dArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
    }

    public void arraySetterHelper(final byte[] bArr, QName qName) {
        commonSetterHelper(qName, (QNameSet) null, bArr == null ? 0 : bArr.length, new BiConsumer() { // from class: com.sunia.HTREnginev2.vvo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$5(bArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
    }

    public void arraySetterHelper(final short[] sArr, QName qName) {
        commonSetterHelper(qName, (QNameSet) null, sArr == null ? 0 : sArr.length, new BiConsumer() { // from class: com.sunia.HTREnginev2.tvo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$6(sArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
    }

    public void arraySetterHelper(final int[] iArr, QName qName) {
        commonSetterHelper(qName, (QNameSet) null, iArr == null ? 0 : iArr.length, new BiConsumer() { // from class: com.sunia.HTREnginev2.gwo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$7(iArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
    }

    public void arraySetterHelper(final long[] jArr, QName qName) {
        commonSetterHelper(qName, (QNameSet) null, jArr == null ? 0 : jArr.length, new BiConsumer() { // from class: com.sunia.HTREnginev2.hwo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$8(jArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
    }

    public void arraySetterHelper(BigDecimal[] bigDecimalArr, QName qName) {
        commonSetterHelper2(qName, null, bigDecimalArr, new yvo());
    }

    public void arraySetterHelper(BigInteger[] bigIntegerArr, QName qName) {
        commonSetterHelper2(qName, null, bigIntegerArr, new lvo());
    }

    public void arraySetterHelper(String[] strArr, QName qName) {
        commonSetterHelper2(qName, null, strArr, new nvo());
    }

    public void arraySetterHelper(byte[][] bArr, QName qName) {
        commonSetterHelper2(qName, null, bArr, new kvo());
    }

    public void arraySetterHelper(GDate[] gDateArr, QName qName) {
        commonSetterHelper2(qName, null, gDateArr, new mvo());
    }

    public void arraySetterHelper(GDuration[] gDurationArr, QName qName) {
        commonSetterHelper2(qName, null, gDurationArr, new kwo());
    }

    public void arraySetterHelper(Calendar[] calendarArr, QName qName) {
        commonSetterHelper2(qName, null, calendarArr, new awo());
    }

    public void arraySetterHelper(Date[] dateArr, QName qName) {
        commonSetterHelper2(qName, null, dateArr, new xvo());
    }

    public void arraySetterHelper(QName[] qNameArr, QName qName) {
        commonSetterHelper2(qName, null, qNameArr, new rvo());
    }

    public void arraySetterHelper(StringEnumAbstractBase[] stringEnumAbstractBaseArr, QName qName) {
        commonSetterHelper2(qName, null, stringEnumAbstractBaseArr, new fwo());
    }

    public void arraySetterHelper(List<?>[] listArr, QName qName) {
        commonSetterHelper2(qName, null, listArr, new dwo());
    }

    public void arraySetterHelper(final boolean[] zArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper(qName, qNameSet, zArr == null ? 0 : zArr.length, new BiConsumer() { // from class: com.sunia.HTREnginev2.qvo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$9(zArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
    }

    public void arraySetterHelper(final float[] fArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper(qName, qNameSet, fArr == null ? 0 : fArr.length, new BiConsumer() { // from class: com.sunia.HTREnginev2.bwo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$10(fArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
    }

    public void arraySetterHelper(final double[] dArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper(qName, qNameSet, dArr == null ? 0 : dArr.length, new BiConsumer() { // from class: com.sunia.HTREnginev2.svo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$11(dArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
    }

    public void arraySetterHelper(final byte[] bArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper(qName, qNameSet, bArr == null ? 0 : bArr.length, new BiConsumer() { // from class: com.sunia.HTREnginev2.jwo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$12(bArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
    }

    public void arraySetterHelper(final short[] sArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper(qName, qNameSet, sArr == null ? 0 : sArr.length, new BiConsumer() { // from class: com.sunia.HTREnginev2.wvo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$13(sArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
    }

    public void arraySetterHelper(final int[] iArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper(qName, qNameSet, iArr == null ? 0 : iArr.length, new BiConsumer() { // from class: com.sunia.HTREnginev2.uvo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$14(iArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
    }

    public void arraySetterHelper(final long[] jArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper(qName, qNameSet, jArr == null ? 0 : jArr.length, new BiConsumer() { // from class: com.sunia.HTREnginev2.iwo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XmlComplexContentImpl.lambda$arraySetterHelper$15(jArr, (XmlObjectBase) obj, (Integer) obj2);
            }
        });
    }

    public void arraySetterHelper(BigDecimal[] bigDecimalArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper2(qName, qNameSet, bigDecimalArr, new yvo());
    }

    public void arraySetterHelper(BigInteger[] bigIntegerArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper2(qName, qNameSet, bigIntegerArr, new lvo());
    }

    public void arraySetterHelper(String[] strArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper2(qName, qNameSet, strArr, new nvo());
    }

    public void arraySetterHelper(byte[][] bArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper2(qName, qNameSet, bArr, new kvo());
    }

    public void arraySetterHelper(GDate[] gDateArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper2(qName, qNameSet, gDateArr, new mvo());
    }

    public void arraySetterHelper(GDuration[] gDurationArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper2(qName, qNameSet, gDurationArr, new kwo());
    }

    public void arraySetterHelper(Calendar[] calendarArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper2(qName, qNameSet, calendarArr, new awo());
    }

    public void arraySetterHelper(Date[] dateArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper2(qName, qNameSet, dateArr, new xvo());
    }

    public void arraySetterHelper(QName[] qNameArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper2(qName, qNameSet, qNameArr, new rvo());
    }

    public void arraySetterHelper(StringEnumAbstractBase[] stringEnumAbstractBaseArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper2(qName, qNameSet, stringEnumAbstractBaseArr, new fwo());
    }

    public void arraySetterHelper(List<?>[] listArr, QName qName, QNameSet qNameSet) {
        commonSetterHelper2(qName, qNameSet, listArr, new dwo());
    }

    public void arraySetterHelper(XmlObject[] xmlObjectArr, QName qName) {
        arraySetterHelper(xmlObjectArr, qName, (QNameSet) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00d9 A[LOOP:3: B:53:0x00d6->B:55:0x00d9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void arraySetterHelper(org.apache.xmlbeans.XmlObject[] r8, javax.xml.namespace.QName r9, org.apache.xmlbeans.QNameSet r10) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.values.XmlComplexContentImpl.arraySetterHelper(org.apache.xmlbeans.XmlObject[], javax.xml.namespace.QName, org.apache.xmlbeans.QNameSet):void");
    }
}
