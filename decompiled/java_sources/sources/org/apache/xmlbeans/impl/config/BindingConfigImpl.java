package org.apache.xmlbeans.impl.config;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.BindingConfig;
import org.apache.xmlbeans.InterfaceExtension;
import org.apache.xmlbeans.PrePostExtension;
import org.apache.xmlbeans.UserType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.config.BindingConfigImpl;
import org.apache.xmlbeans.impl.config.InterfaceExtensionImpl;
import org.apache.xmlbeans.impl.config.PrePostExtensionImpl;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.ConfigDocument;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.Extensionconfig;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.Nsconfig;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnametargetenum;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.Usertypeconfig;
import org.apache.xmlbeans.impl.schema.StscState;

/* loaded from: classes13.dex */
public class BindingConfigImpl extends BindingConfig {
    private final File[] _classpath;
    private final File[] _javaFiles;
    private Parser _parser;
    private final Map<Object, String> _packageMap = new LinkedHashMap();
    private final Map<Object, String> _prefixMap = new LinkedHashMap();
    private final Map<Object, String> _suffixMap = new LinkedHashMap();
    private final Map<Object, String> _packageMapByUriPrefix = new LinkedHashMap();
    private final Map<Object, String> _prefixMapByUriPrefix = new LinkedHashMap();
    private final Map<Object, String> _suffixMapByUriPrefix = new LinkedHashMap();
    private final Map<QName, String> _qnameTypeMap = new LinkedHashMap();
    private final Map<QName, String> _qnameDocTypeMap = new LinkedHashMap();
    private final Map<QName, String> _qnameElemMap = new LinkedHashMap();
    private final Map<QName, String> _qnameAttMap = new LinkedHashMap();
    private final List<InterfaceExtensionImpl> _interfaceExtensions = new ArrayList();
    private final List<PrePostExtensionImpl> _prePostExtensions = new ArrayList();
    private final Map<QName, UserTypeImpl> _userTypes = new LinkedHashMap();

    private BindingConfigImpl(ConfigDocument.Config[] configArr, File[] fileArr, File[] fileArr2) {
        this._javaFiles = fileArr != null ? (File[]) fileArr.clone() : new File[0];
        this._classpath = fileArr2 != null ? (File[]) fileArr2.clone() : new File[0];
        for (ConfigDocument.Config config : configArr) {
            for (Nsconfig nsconfig : config.getNamespaceArray()) {
                recordNamespaceSetting(nsconfig.getUri(), nsconfig.getPackage(), this._packageMap);
                recordNamespaceSetting(nsconfig.getUri(), nsconfig.getPrefix(), this._prefixMap);
                recordNamespaceSetting(nsconfig.getUri(), nsconfig.getSuffix(), this._suffixMap);
                recordNamespacePrefixSetting(nsconfig.getUriprefix(), nsconfig.getPackage(), this._packageMapByUriPrefix);
                recordNamespacePrefixSetting(nsconfig.getUriprefix(), nsconfig.getPrefix(), this._prefixMapByUriPrefix);
                recordNamespacePrefixSetting(nsconfig.getUriprefix(), nsconfig.getSuffix(), this._suffixMapByUriPrefix);
            }
            for (Qnameconfig qnameconfig : config.getQnameArray()) {
                List xgetListValue = qnameconfig.xgetTarget().xgetListValue();
                QName name = qnameconfig.getName();
                String javaname = qnameconfig.getJavaname();
                Iterator it2 = xgetListValue.iterator();
                while (it2.hasNext()) {
                    int intValue = ((Qnametargetenum) it2.next()).getEnumValue().intValue();
                    if (intValue == 1) {
                        this._qnameTypeMap.put(name, javaname);
                    } else if (intValue == 2) {
                        this._qnameDocTypeMap.put(name, javaname);
                    } else if (intValue == 3) {
                        this._qnameElemMap.put(name, javaname);
                    } else if (intValue == 4) {
                        this._qnameAttMap.put(name, javaname);
                    }
                }
            }
            for (Extensionconfig extensionconfig : config.getExtensionArray()) {
                recordExtensionSetting(extensionconfig);
            }
            for (Usertypeconfig usertypeconfig : config.getUsertypeArray()) {
                recordUserTypeSetting(usertypeconfig);
            }
        }
        secondPhaseValidation();
    }

    public static void error(String str, XmlObject xmlObject) {
        StscState.get().error(str, 0, xmlObject);
    }

    public static BindingConfig forConfigDocuments(ConfigDocument.Config[] configArr, File[] fileArr, File[] fileArr2) {
        return new BindingConfigImpl(configArr, fileArr, fileArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getInterfaceExtensions$2(String str, InterfaceExtensionImpl interfaceExtensionImpl) {
        return interfaceExtensionImpl.contains(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InterfaceExtension[] lambda$getInterfaceExtensions$3(int i) {
        return new InterfaceExtension[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getPrePostExtension$4(String str, PrePostExtensionImpl prePostExtensionImpl) {
        return prePostExtensionImpl.contains(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$recordNamespacePrefixSetting$1(Map map, String str, Object obj) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$recordNamespaceSetting$0(Map map, String str, Object obj) {
        if ("##local".equals(obj)) {
            obj = "";
        }
    }

    private String lookup(Map<Object, String> map, Map<Object, String> map2, String str) {
        String lookupByUriPrefix;
        if (str == null) {
            str = "";
        }
        String str2 = map.get(str);
        return str2 != null ? str2 : (map2 == null || (lookupByUriPrefix = lookupByUriPrefix(map2, str)) == null) ? map.get("##any") : lookupByUriPrefix;
    }

    private String lookupByUriPrefix(Map<Object, String> map, String str) {
        if (str == null || map.isEmpty()) {
            return null;
        }
        String str2 = null;
        for (Object obj : map.keySet()) {
            if (obj instanceof String) {
                String str3 = (String) obj;
                if (str2 == null || str3.length() >= str2.length()) {
                    if (str.startsWith(str3)) {
                        str2 = str3;
                    }
                }
            }
        }
        if (str2 != null) {
            return map.get(str2);
        }
        return null;
    }

    private Parser parserInstance() {
        if (this._parser == null) {
            this._parser = new Parser(this._javaFiles, this._classpath);
        }
        return this._parser;
    }

    private void recordExtensionSetting(Extensionconfig extensionconfig) {
        NameSet nameSet;
        Object obj = extensionconfig.getFor();
        if ((obj instanceof String) && "*".equals(obj)) {
            nameSet = NameSet.EVERYTHING;
        } else if (obj instanceof List) {
            NameSetBuilder nameSetBuilder = new NameSetBuilder();
            Iterator it2 = ((List) obj).iterator();
            while (it2.hasNext()) {
                nameSetBuilder.add((String) it2.next());
            }
            nameSet = nameSetBuilder.toNameSet();
        } else {
            nameSet = null;
        }
        if (nameSet == null) {
            error("Invalid value of attribute 'for' : '" + obj + "'.", extensionconfig);
        }
        Extensionconfig.Interface[] interfaceArray = extensionconfig.getInterfaceArray();
        Extensionconfig.PrePostSet prePostSet = extensionconfig.getPrePostSet();
        Parser parserInstance = parserInstance();
        if (interfaceArray.length > 0 || prePostSet != null) {
            for (Extensionconfig.Interface r0 : interfaceArray) {
                addInterfaceExtension(InterfaceExtensionImpl.newInstance(parserInstance, nameSet, r0));
            }
            addPrePostExtension(PrePostExtensionImpl.newInstance(parserInstance, nameSet, prePostSet));
        }
    }

    private static void recordNamespacePrefixSetting(List list, final String str, final Map<Object, String> map) {
        if (str == null || list == null) {
            return;
        }
        list.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.mr
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BindingConfigImpl.lambda$recordNamespacePrefixSetting$1(map, str, obj);
            }
        });
    }

    private static void recordNamespaceSetting(Object obj, final String str, final Map<Object, String> map) {
        if (str == null) {
            return;
        }
        if (obj == null) {
            map.put("", str);
            return;
        }
        if ((obj instanceof String) && "##any".equals(obj)) {
            map.put(obj, str);
        } else if (obj instanceof List) {
            ((List) obj).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.kr
                @Override // java.util.function.Consumer
                public final void accept(Object obj2) {
                    BindingConfigImpl.lambda$recordNamespaceSetting$0(map, str, obj2);
                }
            });
        }
    }

    private void recordUserTypeSetting(Usertypeconfig usertypeconfig) {
        UserTypeImpl newInstance = UserTypeImpl.newInstance(parserInstance(), usertypeconfig);
        this._userTypes.put(newInstance.getName(), newInstance);
    }

    public static void warning(String str, XmlObject xmlObject) {
        StscState.get().error(str, 1, xmlObject);
    }

    public void addInterfaceExtension(InterfaceExtensionImpl interfaceExtensionImpl) {
        if (interfaceExtensionImpl == null) {
            return;
        }
        this._interfaceExtensions.add(interfaceExtensionImpl);
    }

    public void addPrePostExtension(PrePostExtensionImpl prePostExtensionImpl) {
        if (prePostExtensionImpl == null) {
            return;
        }
        this._prePostExtensions.add(prePostExtensionImpl);
    }

    @Override // org.apache.xmlbeans.BindingConfig
    public InterfaceExtension[] getInterfaceExtensions() {
        return (InterfaceExtension[]) this._interfaceExtensions.toArray(new InterfaceExtension[0]);
    }

    @Override // org.apache.xmlbeans.BindingConfig
    public PrePostExtension getPrePostExtension(final String str) {
        return this._prePostExtensions.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.lr
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getPrePostExtension$4;
                lambda$getPrePostExtension$4 = BindingConfigImpl.lambda$getPrePostExtension$4(str, (PrePostExtensionImpl) obj);
                return lambda$getPrePostExtension$4;
            }
        }).findFirst().orElse(null);
    }

    @Override // org.apache.xmlbeans.BindingConfig
    public PrePostExtension[] getPrePostExtensions() {
        return (PrePostExtension[]) this._prePostExtensions.toArray(new PrePostExtension[0]);
    }

    @Override // org.apache.xmlbeans.BindingConfig
    public UserType[] getUserTypes() {
        return (UserType[]) this._userTypes.values().toArray(new UserType[0]);
    }

    public String lookupJavanameForQName(QName qName) {
        String str = this._qnameTypeMap.get(qName);
        return str != null ? str : this._qnameDocTypeMap.get(qName);
    }

    @Override // org.apache.xmlbeans.BindingConfig
    public String lookupPackageForNamespace(String str) {
        return lookup(this._packageMap, this._packageMapByUriPrefix, str);
    }

    @Override // org.apache.xmlbeans.BindingConfig
    public String lookupPrefixForNamespace(String str) {
        return lookup(this._prefixMap, this._prefixMapByUriPrefix, str);
    }

    @Override // org.apache.xmlbeans.BindingConfig
    public String lookupSuffixForNamespace(String str) {
        return lookup(this._suffixMap, this._suffixMapByUriPrefix, str);
    }

    @Override // org.apache.xmlbeans.BindingConfig
    public UserType lookupUserTypeForQName(QName qName) {
        if (qName == null) {
            return null;
        }
        return this._userTypes.get(qName);
    }

    public void secondPhaseValidation() {
        HashMap hashMap = new HashMap();
        Iterator<InterfaceExtensionImpl> it2 = this._interfaceExtensions.iterator();
        while (true) {
            int i = 0;
            if (it2.hasNext()) {
                InterfaceExtensionImpl.MethodSignatureImpl[] methodSignatureImplArr = (InterfaceExtensionImpl.MethodSignatureImpl[]) it2.next().getMethods();
                int length = methodSignatureImplArr.length;
                while (i < length) {
                    InterfaceExtensionImpl.MethodSignatureImpl methodSignatureImpl = methodSignatureImplArr[i];
                    if (hashMap.containsKey(methodSignatureImpl)) {
                        InterfaceExtensionImpl.MethodSignatureImpl methodSignatureImpl2 = (InterfaceExtensionImpl.MethodSignatureImpl) hashMap.get(methodSignatureImpl);
                        if (methodSignatureImpl.getReturnType().equals(methodSignatureImpl2.getReturnType())) {
                            return;
                        }
                        error("Colliding methods '" + methodSignatureImpl.getSignature() + "' in interfaces " + methodSignatureImpl.getInterfaceName() + CloudStorageConstants.OPERATION_AND + methodSignatureImpl2.getInterfaceName() + ".", null);
                        return;
                    }
                    hashMap.put(methodSignatureImpl, methodSignatureImpl);
                    i++;
                }
            } else {
                while (true) {
                    if (i >= this._prePostExtensions.size() - 1) {
                        return;
                    }
                    PrePostExtensionImpl prePostExtensionImpl = this._prePostExtensions.get(i);
                    for (int i2 = 1; i2 < this._prePostExtensions.size(); i2++) {
                        PrePostExtensionImpl prePostExtensionImpl2 = this._prePostExtensions.get(i2);
                        if (prePostExtensionImpl.hasNameSetIntersection(prePostExtensionImpl2)) {
                            error("The applicable domain for handler '" + prePostExtensionImpl.getHandlerNameForJavaSource() + "' intersects with the one for '" + prePostExtensionImpl2.getHandlerNameForJavaSource() + "'.", null);
                        }
                    }
                    i++;
                }
            }
        }
    }

    @Override // org.apache.xmlbeans.BindingConfig
    public InterfaceExtension[] getInterfaceExtensions(final String str) {
        return (InterfaceExtension[]) this._interfaceExtensions.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.ir
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getInterfaceExtensions$2;
                lambda$getInterfaceExtensions$2 = BindingConfigImpl.lambda$getInterfaceExtensions$2(str, (InterfaceExtensionImpl) obj);
                return lambda$getInterfaceExtensions$2;
            }
        }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.jr
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                InterfaceExtension[] lambda$getInterfaceExtensions$3;
                lambda$getInterfaceExtensions$3 = BindingConfigImpl.lambda$getInterfaceExtensions$3(i);
                return lambda$getInterfaceExtensions$3;
            }
        });
    }

    @Override // org.apache.xmlbeans.BindingConfig
    public String lookupJavanameForQName(QName qName, int i) {
        if (i == 1) {
            return this._qnameTypeMap.get(qName);
        }
        if (i == 2) {
            return this._qnameDocTypeMap.get(qName);
        }
        if (i == 3) {
            return this._qnameElemMap.get(qName);
        }
        if (i != 4) {
            return null;
        }
        return this._qnameAttMap.get(qName);
    }
}
