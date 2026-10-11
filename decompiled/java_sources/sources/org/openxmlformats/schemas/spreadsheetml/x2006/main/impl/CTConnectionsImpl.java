package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConnection;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConnections;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTConnectionsImpl;

/* loaded from: classes15.dex */
public class CTConnectionsImpl extends XmlComplexContentImpl implements CTConnections {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, Http2ExchangeCodec.f103777g)};
    private static final long serialVersionUID = 1;

    public CTConnectionsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConnections
    public CTConnection addNewConnection() {
        CTConnection cTConnection;
        synchronized (monitor()) {
            check_orphaned();
            cTConnection = (CTConnection) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTConnection;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConnections
    public CTConnection[] getConnectionArray() {
        return (CTConnection[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTConnection[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConnections
    public List<CTConnection> getConnectionList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ta2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTConnectionsImpl.this.getConnectionArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ua2
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTConnectionsImpl.this.setConnectionArray(((Integer) obj).intValue(), (CTConnection) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.va2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTConnectionsImpl.this.insertNewConnection(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wa2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTConnectionsImpl.this.removeConnection(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xa2
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTConnectionsImpl.this.sizeOfConnectionArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConnections
    public CTConnection insertNewConnection(int i) {
        CTConnection cTConnection;
        synchronized (monitor()) {
            check_orphaned();
            cTConnection = (CTConnection) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTConnection;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConnections
    public void removeConnection(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConnections
    public void setConnectionArray(CTConnection[] cTConnectionArr) {
        check_orphaned();
        arraySetterHelper(cTConnectionArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConnections
    public int sizeOfConnectionArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConnections
    public CTConnection getConnectionArray(int i) {
        CTConnection cTConnection;
        synchronized (monitor()) {
            check_orphaned();
            cTConnection = (CTConnection) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTConnection == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTConnection;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConnections
    public void setConnectionArray(int i, CTConnection cTConnection) {
        generatedSetterHelperImpl(cTConnection, PROPERTY_QNAME[0], i, (short) 2);
    }
}
