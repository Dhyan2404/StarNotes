package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.AttachedToolbarsType;
import com.microsoft.schemas.office.visio.x2012.main.CustomMenusFileType;
import com.microsoft.schemas.office.visio.x2012.main.CustomToolbarsFileType;
import com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType;
import com.microsoft.schemas.office.visio.x2012.main.DynamicGridEnabledType;
import com.microsoft.schemas.office.visio.x2012.main.GlueSettingsType;
import com.microsoft.schemas.office.visio.x2012.main.ProtectBkgndsType;
import com.microsoft.schemas.office.visio.x2012.main.ProtectMastersType;
import com.microsoft.schemas.office.visio.x2012.main.ProtectShapesType;
import com.microsoft.schemas.office.visio.x2012.main.ProtectStylesType;
import com.microsoft.schemas.office.visio.x2012.main.SnapAnglesType;
import com.microsoft.schemas.office.visio.x2012.main.SnapExtensionsType;
import com.microsoft.schemas.office.visio.x2012.main.SnapSettingsType;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class DocumentSettingsTypeImpl extends XmlComplexContentImpl implements DocumentSettingsType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "GlueSettings"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "SnapSettings"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "SnapExtensions"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "SnapAngles"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "DynamicGridEnabled"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "ProtectStyles"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "ProtectShapes"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "ProtectMasters"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "ProtectBkgnds"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "CustomMenusFile"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "CustomToolbarsFile"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "AttachedToolbars"), new QName("", "TopPage"), new QName("", "DefaultTextStyle"), new QName("", "DefaultLineStyle"), new QName("", "DefaultFillStyle"), new QName("", "DefaultGuideStyle")};
    private static final long serialVersionUID = 1;

    public DocumentSettingsTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public AttachedToolbarsType addNewAttachedToolbars() {
        AttachedToolbarsType attachedToolbarsType;
        synchronized (monitor()) {
            check_orphaned();
            attachedToolbarsType = (AttachedToolbarsType) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return attachedToolbarsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public CustomMenusFileType addNewCustomMenusFile() {
        CustomMenusFileType customMenusFileType;
        synchronized (monitor()) {
            check_orphaned();
            customMenusFileType = (CustomMenusFileType) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return customMenusFileType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public CustomToolbarsFileType addNewCustomToolbarsFile() {
        CustomToolbarsFileType customToolbarsFileType;
        synchronized (monitor()) {
            check_orphaned();
            customToolbarsFileType = (CustomToolbarsFileType) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return customToolbarsFileType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public DynamicGridEnabledType addNewDynamicGridEnabled() {
        DynamicGridEnabledType dynamicGridEnabledType;
        synchronized (monitor()) {
            check_orphaned();
            dynamicGridEnabledType = (DynamicGridEnabledType) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return dynamicGridEnabledType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public GlueSettingsType addNewGlueSettings() {
        GlueSettingsType glueSettingsType;
        synchronized (monitor()) {
            check_orphaned();
            glueSettingsType = (GlueSettingsType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return glueSettingsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public ProtectBkgndsType addNewProtectBkgnds() {
        ProtectBkgndsType protectBkgndsType;
        synchronized (monitor()) {
            check_orphaned();
            protectBkgndsType = (ProtectBkgndsType) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return protectBkgndsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public ProtectMastersType addNewProtectMasters() {
        ProtectMastersType protectMastersType;
        synchronized (monitor()) {
            check_orphaned();
            protectMastersType = (ProtectMastersType) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return protectMastersType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public ProtectShapesType addNewProtectShapes() {
        ProtectShapesType protectShapesType;
        synchronized (monitor()) {
            check_orphaned();
            protectShapesType = (ProtectShapesType) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return protectShapesType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public ProtectStylesType addNewProtectStyles() {
        ProtectStylesType protectStylesType;
        synchronized (monitor()) {
            check_orphaned();
            protectStylesType = (ProtectStylesType) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return protectStylesType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public SnapAnglesType addNewSnapAngles() {
        SnapAnglesType snapAnglesType;
        synchronized (monitor()) {
            check_orphaned();
            snapAnglesType = (SnapAnglesType) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return snapAnglesType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public SnapExtensionsType addNewSnapExtensions() {
        SnapExtensionsType snapExtensionsType;
        synchronized (monitor()) {
            check_orphaned();
            snapExtensionsType = (SnapExtensionsType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return snapExtensionsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public SnapSettingsType addNewSnapSettings() {
        SnapSettingsType snapSettingsType;
        synchronized (monitor()) {
            check_orphaned();
            snapSettingsType = (SnapSettingsType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return snapSettingsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public AttachedToolbarsType getAttachedToolbars() {
        AttachedToolbarsType attachedToolbarsType;
        synchronized (monitor()) {
            check_orphaned();
            attachedToolbarsType = (AttachedToolbarsType) get_store().find_element_user(PROPERTY_QNAME[11], 0);
            if (attachedToolbarsType == null) {
                attachedToolbarsType = null;
            }
        }
        return attachedToolbarsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public CustomMenusFileType getCustomMenusFile() {
        CustomMenusFileType customMenusFileType;
        synchronized (monitor()) {
            check_orphaned();
            customMenusFileType = (CustomMenusFileType) get_store().find_element_user(PROPERTY_QNAME[9], 0);
            if (customMenusFileType == null) {
                customMenusFileType = null;
            }
        }
        return customMenusFileType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public CustomToolbarsFileType getCustomToolbarsFile() {
        CustomToolbarsFileType customToolbarsFileType;
        synchronized (monitor()) {
            check_orphaned();
            customToolbarsFileType = (CustomToolbarsFileType) get_store().find_element_user(PROPERTY_QNAME[10], 0);
            if (customToolbarsFileType == null) {
                customToolbarsFileType = null;
            }
        }
        return customToolbarsFileType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public long getDefaultFillStyle() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[15]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public long getDefaultGuideStyle() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[16]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public long getDefaultLineStyle() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[14]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public long getDefaultTextStyle() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[13]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public DynamicGridEnabledType getDynamicGridEnabled() {
        DynamicGridEnabledType dynamicGridEnabledType;
        synchronized (monitor()) {
            check_orphaned();
            dynamicGridEnabledType = (DynamicGridEnabledType) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (dynamicGridEnabledType == null) {
                dynamicGridEnabledType = null;
            }
        }
        return dynamicGridEnabledType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public GlueSettingsType getGlueSettings() {
        GlueSettingsType glueSettingsType;
        synchronized (monitor()) {
            check_orphaned();
            glueSettingsType = (GlueSettingsType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (glueSettingsType == null) {
                glueSettingsType = null;
            }
        }
        return glueSettingsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public ProtectBkgndsType getProtectBkgnds() {
        ProtectBkgndsType protectBkgndsType;
        synchronized (monitor()) {
            check_orphaned();
            protectBkgndsType = (ProtectBkgndsType) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (protectBkgndsType == null) {
                protectBkgndsType = null;
            }
        }
        return protectBkgndsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public ProtectMastersType getProtectMasters() {
        ProtectMastersType protectMastersType;
        synchronized (monitor()) {
            check_orphaned();
            protectMastersType = (ProtectMastersType) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (protectMastersType == null) {
                protectMastersType = null;
            }
        }
        return protectMastersType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public ProtectShapesType getProtectShapes() {
        ProtectShapesType protectShapesType;
        synchronized (monitor()) {
            check_orphaned();
            protectShapesType = (ProtectShapesType) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (protectShapesType == null) {
                protectShapesType = null;
            }
        }
        return protectShapesType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public ProtectStylesType getProtectStyles() {
        ProtectStylesType protectStylesType;
        synchronized (monitor()) {
            check_orphaned();
            protectStylesType = (ProtectStylesType) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (protectStylesType == null) {
                protectStylesType = null;
            }
        }
        return protectStylesType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public SnapAnglesType getSnapAngles() {
        SnapAnglesType snapAnglesType;
        synchronized (monitor()) {
            check_orphaned();
            snapAnglesType = (SnapAnglesType) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (snapAnglesType == null) {
                snapAnglesType = null;
            }
        }
        return snapAnglesType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public SnapExtensionsType getSnapExtensions() {
        SnapExtensionsType snapExtensionsType;
        synchronized (monitor()) {
            check_orphaned();
            snapExtensionsType = (SnapExtensionsType) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (snapExtensionsType == null) {
                snapExtensionsType = null;
            }
        }
        return snapExtensionsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public SnapSettingsType getSnapSettings() {
        SnapSettingsType snapSettingsType;
        synchronized (monitor()) {
            check_orphaned();
            snapSettingsType = (SnapSettingsType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (snapSettingsType == null) {
                snapSettingsType = null;
            }
        }
        return snapSettingsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public long getTopPage() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[12]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetAttachedToolbars() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[11]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetCustomMenusFile() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[9]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetCustomToolbarsFile() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[10]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetDefaultFillStyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[15]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetDefaultGuideStyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[16]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetDefaultLineStyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[14]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetDefaultTextStyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[13]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetDynamicGridEnabled() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetGlueSettings() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetProtectBkgnds() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetProtectMasters() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetProtectShapes() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetProtectStyles() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetSnapAngles() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetSnapExtensions() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetSnapSettings() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public boolean isSetTopPage() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[12]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setAttachedToolbars(AttachedToolbarsType attachedToolbarsType) {
        generatedSetterHelperImpl(attachedToolbarsType, PROPERTY_QNAME[11], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setCustomMenusFile(CustomMenusFileType customMenusFileType) {
        generatedSetterHelperImpl(customMenusFileType, PROPERTY_QNAME[9], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setCustomToolbarsFile(CustomToolbarsFileType customToolbarsFileType) {
        generatedSetterHelperImpl(customToolbarsFileType, PROPERTY_QNAME[10], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setDefaultFillStyle(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[15]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[15]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setDefaultGuideStyle(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[16]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[16]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setDefaultLineStyle(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[14]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[14]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setDefaultTextStyle(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[13]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[13]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setDynamicGridEnabled(DynamicGridEnabledType dynamicGridEnabledType) {
        generatedSetterHelperImpl(dynamicGridEnabledType, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setGlueSettings(GlueSettingsType glueSettingsType) {
        generatedSetterHelperImpl(glueSettingsType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setProtectBkgnds(ProtectBkgndsType protectBkgndsType) {
        generatedSetterHelperImpl(protectBkgndsType, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setProtectMasters(ProtectMastersType protectMastersType) {
        generatedSetterHelperImpl(protectMastersType, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setProtectShapes(ProtectShapesType protectShapesType) {
        generatedSetterHelperImpl(protectShapesType, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setProtectStyles(ProtectStylesType protectStylesType) {
        generatedSetterHelperImpl(protectStylesType, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setSnapAngles(SnapAnglesType snapAnglesType) {
        generatedSetterHelperImpl(snapAnglesType, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setSnapExtensions(SnapExtensionsType snapExtensionsType) {
        generatedSetterHelperImpl(snapExtensionsType, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setSnapSettings(SnapSettingsType snapSettingsType) {
        generatedSetterHelperImpl(snapSettingsType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void setTopPage(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[12]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[12]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetAttachedToolbars() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetCustomMenusFile() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetCustomToolbarsFile() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetDefaultFillStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[15]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetDefaultGuideStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[16]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetDefaultLineStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[14]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetDefaultTextStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[13]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetDynamicGridEnabled() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetGlueSettings() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetProtectBkgnds() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetProtectMasters() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetProtectShapes() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetProtectStyles() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetSnapAngles() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetSnapExtensions() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetSnapSettings() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void unsetTopPage() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[12]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public XmlUnsignedInt xgetDefaultFillStyle() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[15]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public XmlUnsignedInt xgetDefaultGuideStyle() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[16]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public XmlUnsignedInt xgetDefaultLineStyle() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[14]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public XmlUnsignedInt xgetDefaultTextStyle() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[13]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public XmlUnsignedInt xgetTopPage() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[12]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void xsetDefaultFillStyle(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[15]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[15]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void xsetDefaultGuideStyle(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[16]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[16]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void xsetDefaultLineStyle(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[14]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[14]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void xsetDefaultTextStyle(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[13]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[13]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType
    public void xsetTopPage(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[12]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[12]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }
}
