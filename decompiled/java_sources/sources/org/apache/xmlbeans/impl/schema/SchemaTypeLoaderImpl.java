package org.apache.xmlbeans.impl.schema;

import com.sunia.HTREnginev2.hbk;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import javax.xml.namespace.QName;
import org.apache.logging.log4j.Logger;
import org.apache.xmlbeans.ResourceLoader;
import org.apache.xmlbeans.SchemaAttributeGroup;
import org.apache.xmlbeans.SchemaGlobalAttribute;
import org.apache.xmlbeans.SchemaGlobalElement;
import org.apache.xmlbeans.SchemaIdentityConstraint;
import org.apache.xmlbeans.SchemaModelGroup;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SchemaTypeLoader;
import org.apache.xmlbeans.SchemaTypeSystem;
import org.apache.xmlbeans.XmlRuntimeException;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.common.SystemCache;
import org.apache.xmlbeans.impl.common.XBeanDebug;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SchemaDocument;
import org.apache.xmlbeans.impl.schema.SchemaTypeLoaderImpl;
import org.apache.xmlbeans.impl.schema.SchemaTypeSystemImpl;

/* loaded from: classes13.dex */
public class SchemaTypeLoaderImpl extends SchemaTypeLoaderBase {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Map<QName, Object> _attributeCache;
    private Map<QName, Object> _attributeGroupCache;
    private Map<QName, Object> _attributeTypeCache;
    private final ClassLoader _classLoader;
    private Map<String, SchemaTypeSystemImpl> _classLoaderTypeSystems;
    private Map<String, Object> _classnameCache;
    private Map<String, SchemaTypeSystemImpl> _classpathTypeSystems;
    private Map<QName, Object> _documentCache;
    private Map<QName, Object> _elementCache;
    private Map<QName, Object> _idConstraintCache;
    private final String _metadataPath;
    private Map<QName, Object> _modelGroupCache;
    private final ResourceLoader _resourceLoader;
    private final SchemaTypeLoader[] _searchPath;
    private Map<QName, Object> _typeCache;
    public static String METADATA_PACKAGE_LOAD = SchemaTypeSystemImpl.METADATA_PACKAGE_GEN;
    private static final Object CACHED_NOT_FOUND = new Object();
    private static final String[] basePackage = {"org.apache.xmlbeans.metadata", "schemaorg_apache_xmlbeans"};
    private static final String[] baseSchemas = {"sXMLCONFIG", "sXMLLANG", "sXMLSCHEMA", "sXMLTOOLS"};
    private static final SchemaTypeLoader[] EMPTY_SCHEMATYPELOADER_ARRAY = new SchemaTypeLoader[0];

    /* loaded from: classes13.dex */
    public static class SchemaTypeLoaderCache extends SystemCache {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final ThreadLocal<List<SoftReference<SchemaTypeLoaderImpl>>> _cachedTypeSystems;

        private SchemaTypeLoaderCache() {
            this._cachedTypeSystems = ThreadLocal.withInitial(new hbk());
        }

        @Override // org.apache.xmlbeans.impl.common.SystemCache
        public void addToTypeLoaderCache(SchemaTypeLoader schemaTypeLoader, ClassLoader classLoader) {
            List<SoftReference<SchemaTypeLoaderImpl>> list = this._cachedTypeSystems.get();
            if (list.size() <= 0) {
                list.add(new SoftReference<>((SchemaTypeLoaderImpl) schemaTypeLoader));
                return;
            }
            SoftReference<SchemaTypeLoaderImpl> softReference = list.get(0);
            list.set(0, new SoftReference<>((SchemaTypeLoaderImpl) schemaTypeLoader));
            list.add(softReference);
        }

        @Override // org.apache.xmlbeans.impl.common.SystemCache
        public void clearThreadLocals() {
            this._cachedTypeSystems.remove();
            super.clearThreadLocals();
        }

        @Override // org.apache.xmlbeans.impl.common.SystemCache
        public SchemaTypeLoader getFromTypeLoaderCache(ClassLoader classLoader) {
            SchemaTypeLoaderImpl schemaTypeLoaderImpl;
            List<SoftReference<SchemaTypeLoaderImpl>> list = this._cachedTypeSystems.get();
            int i = 0;
            while (true) {
                if (i >= list.size()) {
                    i = -1;
                    schemaTypeLoaderImpl = null;
                    break;
                }
                schemaTypeLoaderImpl = list.get(i).get();
                if (schemaTypeLoaderImpl == null) {
                    list.remove(i);
                    i--;
                } else if (schemaTypeLoaderImpl._classLoader == classLoader) {
                    break;
                }
                i++;
            }
            if (i > 0) {
                SoftReference<SchemaTypeLoaderImpl> softReference = list.get(0);
                list.set(0, list.get(i));
                list.set(i, softReference);
            }
            return schemaTypeLoaderImpl;
        }
    }

    static {
        SystemCache.set(new SchemaTypeLoaderCache());
    }

    private SchemaTypeLoaderImpl(SchemaTypeLoader[] schemaTypeLoaderArr, ResourceLoader resourceLoader, ClassLoader classLoader, String str) {
        this._searchPath = schemaTypeLoaderArr == null ? EMPTY_SCHEMATYPELOADER_ARRAY : schemaTypeLoaderArr;
        this._resourceLoader = resourceLoader;
        this._classLoader = classLoader;
        if (str != null) {
            this._metadataPath = str;
        } else {
            this._metadataPath = isPath30(classLoader) ? METADATA_PACKAGE_LOAD : "schema" + METADATA_PACKAGE_LOAD.replace("/", "_");
        }
        initCaches();
    }

    public static SchemaTypeLoader build(SchemaTypeLoader[] schemaTypeLoaderArr, ResourceLoader resourceLoader, ClassLoader classLoader) {
        return build(schemaTypeLoaderArr, resourceLoader, classLoader, null);
    }

    public static String crackEntry(ResourceLoader resourceLoader, String str) {
        InputStream resourceAsStream = resourceLoader.getResourceAsStream(str);
        if (resourceAsStream == null) {
            return null;
        }
        return crackPointer(resourceAsStream);
    }

    public static String crackPointer(InputStream inputStream) {
        return SchemaTypeSystemImpl.crackPointer(inputStream);
    }

    public static SchemaTypeLoaderImpl getContextTypeLoader() {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        SchemaTypeLoaderImpl schemaTypeLoaderImpl = (SchemaTypeLoaderImpl) SystemCache.get().getFromTypeLoaderCache(contextClassLoader);
        if (schemaTypeLoaderImpl != null) {
            return schemaTypeLoaderImpl;
        }
        SchemaTypeLoaderImpl schemaTypeLoaderImpl2 = new SchemaTypeLoaderImpl(new SchemaTypeLoader[]{BuiltinSchemaTypeSystem.get()}, null, contextClassLoader, null);
        SystemCache.get().addToTypeLoaderCache(schemaTypeLoaderImpl2, contextClassLoader);
        return schemaTypeLoaderImpl2;
    }

    private void initCaches() {
        this._classpathTypeSystems = Collections.synchronizedMap(new HashMap());
        this._classLoaderTypeSystems = Collections.synchronizedMap(new HashMap());
        this._elementCache = Collections.synchronizedMap(new HashMap());
        this._attributeCache = Collections.synchronizedMap(new HashMap());
        this._modelGroupCache = Collections.synchronizedMap(new HashMap());
        this._attributeGroupCache = Collections.synchronizedMap(new HashMap());
        this._idConstraintCache = Collections.synchronizedMap(new HashMap());
        this._typeCache = Collections.synchronizedMap(new HashMap());
        this._documentCache = Collections.synchronizedMap(new HashMap());
        this._attributeTypeCache = Collections.synchronizedMap(new HashMap());
        this._classnameCache = Collections.synchronizedMap(new HashMap());
    }

    private static boolean isPath30(ClassLoader classLoader) {
        String str = METADATA_PACKAGE_LOAD + "/system";
        if (classLoader == null) {
            classLoader = SchemaDocument.class.getClassLoader();
        }
        return classLoader.getResource(str) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ SchemaTypeSystemImpl lambda$getTypeSystemOnClasspath$0(String str) {
        return new SchemaTypeSystemImpl(this._resourceLoader, str, this);
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaAttributeGroup.Ref findAttributeGroupRef(QName qName) {
        Object obj = this._attributeGroupCache.get(qName);
        if (obj == CACHED_NOT_FOUND) {
            return null;
        }
        SchemaAttributeGroup.Ref ref = (SchemaAttributeGroup.Ref) obj;
        if (ref == null) {
            for (SchemaTypeLoader schemaTypeLoader : this._searchPath) {
                ref = schemaTypeLoader.findAttributeGroupRef(qName);
                if (ref != null) {
                    break;
                }
            }
            if (ref == null) {
                SchemaTypeSystemImpl typeSystemForComponent = typeSystemForComponent(this._metadataPath + "/attributegroup/", qName);
                if (typeSystemForComponent != null) {
                    ref = typeSystemForComponent.findAttributeGroupRef(qName);
                }
            }
            this._attributeGroupCache.put(qName, ref == null ? CACHED_NOT_FOUND : ref);
        }
        return ref;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaGlobalAttribute.Ref findAttributeRef(QName qName) {
        Object obj = this._attributeCache.get(qName);
        if (obj == CACHED_NOT_FOUND) {
            return null;
        }
        SchemaGlobalAttribute.Ref ref = (SchemaGlobalAttribute.Ref) obj;
        if (ref == null) {
            for (SchemaTypeLoader schemaTypeLoader : this._searchPath) {
                ref = schemaTypeLoader.findAttributeRef(qName);
                if (ref != null) {
                    break;
                }
            }
            if (ref == null) {
                SchemaTypeSystemImpl typeSystemForComponent = typeSystemForComponent(this._metadataPath + "/attribute/", qName);
                if (typeSystemForComponent != null) {
                    ref = typeSystemForComponent.findAttributeRef(qName);
                }
            }
            this._attributeCache.put(qName, ref == null ? CACHED_NOT_FOUND : ref);
        }
        return ref;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaType.Ref findAttributeTypeRef(QName qName) {
        Object obj = this._attributeTypeCache.get(qName);
        if (obj == CACHED_NOT_FOUND) {
            return null;
        }
        SchemaType.Ref ref = (SchemaType.Ref) obj;
        if (ref == null) {
            for (SchemaTypeLoader schemaTypeLoader : this._searchPath) {
                ref = schemaTypeLoader.findAttributeTypeRef(qName);
                if (ref != null) {
                    break;
                }
            }
            if (ref == null) {
                SchemaTypeSystemImpl typeSystemForComponent = typeSystemForComponent(this._metadataPath + "/attribute/", qName);
                if (typeSystemForComponent != null) {
                    ref = typeSystemForComponent.findAttributeTypeRef(qName);
                }
            }
            this._attributeTypeCache.put(qName, ref == null ? CACHED_NOT_FOUND : ref);
        }
        return ref;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaType.Ref findDocumentTypeRef(QName qName) {
        Object obj = this._documentCache.get(qName);
        if (obj == CACHED_NOT_FOUND) {
            return null;
        }
        SchemaType.Ref ref = (SchemaType.Ref) obj;
        if (ref == null) {
            for (SchemaTypeLoader schemaTypeLoader : this._searchPath) {
                ref = schemaTypeLoader.findDocumentTypeRef(qName);
                if (ref != null) {
                    break;
                }
            }
            if (ref == null) {
                SchemaTypeSystemImpl typeSystemForComponent = typeSystemForComponent(this._metadataPath + "/element/", qName);
                if (typeSystemForComponent != null) {
                    ref = typeSystemForComponent.findDocumentTypeRef(qName);
                }
            }
            this._documentCache.put(qName, ref == null ? CACHED_NOT_FOUND : ref);
        }
        return ref;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaGlobalElement.Ref findElementRef(QName qName) {
        Object obj = this._elementCache.get(qName);
        if (obj == CACHED_NOT_FOUND) {
            return null;
        }
        SchemaGlobalElement.Ref ref = (SchemaGlobalElement.Ref) obj;
        if (ref == null) {
            for (SchemaTypeLoader schemaTypeLoader : this._searchPath) {
                ref = schemaTypeLoader.findElementRef(qName);
                if (ref != null) {
                    break;
                }
            }
            if (ref == null) {
                SchemaTypeSystemImpl typeSystemForComponent = typeSystemForComponent(this._metadataPath + "/element/", qName);
                if (typeSystemForComponent != null) {
                    ref = typeSystemForComponent.findElementRef(qName);
                }
            }
            this._elementCache.put(qName, ref == null ? CACHED_NOT_FOUND : ref);
        }
        return ref;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaIdentityConstraint.Ref findIdentityConstraintRef(QName qName) {
        Object obj = this._idConstraintCache.get(qName);
        if (obj == CACHED_NOT_FOUND) {
            return null;
        }
        SchemaIdentityConstraint.Ref ref = (SchemaIdentityConstraint.Ref) obj;
        if (ref == null) {
            for (SchemaTypeLoader schemaTypeLoader : this._searchPath) {
                ref = schemaTypeLoader.findIdentityConstraintRef(qName);
                if (ref != null) {
                    break;
                }
            }
            if (ref == null) {
                SchemaTypeSystemImpl typeSystemForComponent = typeSystemForComponent(this._metadataPath + "/identityconstraint/", qName);
                if (typeSystemForComponent != null) {
                    ref = typeSystemForComponent.findIdentityConstraintRef(qName);
                }
            }
            this._idConstraintCache.put(qName, ref == null ? CACHED_NOT_FOUND : ref);
        }
        return ref;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaModelGroup.Ref findModelGroupRef(QName qName) {
        Object obj = this._modelGroupCache.get(qName);
        if (obj == CACHED_NOT_FOUND) {
            return null;
        }
        SchemaModelGroup.Ref ref = (SchemaModelGroup.Ref) obj;
        if (ref == null) {
            for (SchemaTypeLoader schemaTypeLoader : this._searchPath) {
                ref = schemaTypeLoader.findModelGroupRef(qName);
                if (ref != null) {
                    break;
                }
            }
            if (ref == null) {
                SchemaTypeSystemImpl typeSystemForComponent = typeSystemForComponent(this._metadataPath + "/modelgroup/", qName);
                if (typeSystemForComponent != null) {
                    ref = typeSystemForComponent.findModelGroupRef(qName);
                }
            }
            this._modelGroupCache.put(qName, ref == null ? CACHED_NOT_FOUND : ref);
        }
        return ref;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaType.Ref findTypeRef(QName qName) {
        Object obj = this._typeCache.get(qName);
        if (obj == CACHED_NOT_FOUND) {
            return null;
        }
        SchemaType.Ref ref = (SchemaType.Ref) obj;
        if (ref == null) {
            for (SchemaTypeLoader schemaTypeLoader : this._searchPath) {
                ref = schemaTypeLoader.findTypeRef(qName);
                if (ref != null) {
                    break;
                }
            }
            if (ref == null) {
                SchemaTypeSystemImpl typeSystemForComponent = typeSystemForComponent(this._metadataPath + "/type/", qName);
                if (typeSystemForComponent != null) {
                    ref = typeSystemForComponent.findTypeRef(qName);
                }
            }
            this._typeCache.put(qName, ref == null ? CACHED_NOT_FOUND : ref);
        }
        return ref;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public InputStream getSourceAsStream(String str) {
        InputStream inputStream;
        ClassLoader classLoader;
        if (!str.startsWith("/")) {
            str = "/" + str;
        }
        ResourceLoader resourceLoader = this._resourceLoader;
        if (resourceLoader != null) {
            inputStream = resourceLoader.getResourceAsStream(this._metadataPath + "/src" + str);
        } else {
            inputStream = null;
        }
        if (inputStream != null || (classLoader = this._classLoader) == null) {
            return inputStream;
        }
        return classLoader.getResourceAsStream(this._metadataPath + "/src" + str);
    }

    public SchemaTypeSystemImpl getTypeSystemOnClassloader(String str) {
        Logger logger = XBeanDebug.LOG;
        logger.atTrace().log("Finding type system {} on classloader", str);
        SchemaTypeSystemImpl schemaTypeSystemImpl = this._classLoaderTypeSystems.get(str);
        if (schemaTypeSystemImpl != null) {
            return schemaTypeSystemImpl;
        }
        logger.atTrace().log("Type system {}} not cached - consulting field", str);
        SchemaTypeSystemImpl forName = SchemaTypeSystemImpl.forName(str, this._classLoader);
        this._classLoaderTypeSystems.put(str, forName);
        return forName;
    }

    public SchemaTypeSystemImpl getTypeSystemOnClasspath(String str) {
        return this._classpathTypeSystems.computeIfAbsent(str, new Function() { // from class: com.sunia.HTREnginev2.w4m
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SchemaTypeSystemImpl lambda$getTypeSystemOnClasspath$0;
                lambda$getTypeSystemOnClasspath$0 = SchemaTypeLoaderImpl.this.lambda$getTypeSystemOnClasspath$0((String) obj);
                return lambda$getTypeSystemOnClasspath$0;
            }
        });
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public boolean isNamespaceDefined(String str) {
        for (SchemaTypeLoader schemaTypeLoader : this._searchPath) {
            if (schemaTypeLoader.isNamespaceDefined(str)) {
                return true;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this._metadataPath);
        sb.append("/namespace/");
        return typeSystemForComponent(sb.toString(), new QName(str, "xmlns")) != null;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaType typeForClassname(String str) {
        String replace = str.replace('$', '.');
        Object obj = this._classnameCache.get(replace);
        if (obj == CACHED_NOT_FOUND) {
            return null;
        }
        SchemaType schemaType = (SchemaType) obj;
        if (schemaType == null) {
            for (SchemaTypeLoader schemaTypeLoader : this._searchPath) {
                schemaType = schemaTypeLoader.typeForClassname(replace);
                if (schemaType != null) {
                    break;
                }
            }
            if (schemaType == null) {
                SchemaTypeSystemImpl typeSystemForClassname = typeSystemForClassname(this._metadataPath + "/javaname/", replace);
                if (typeSystemForClassname != null) {
                    schemaType = typeSystemForClassname.typeForClassname(replace);
                }
            }
            this._classnameCache.put(replace, schemaType == null ? CACHED_NOT_FOUND : schemaType);
        }
        return schemaType;
    }

    public SchemaTypeSystemImpl typeSystemForClassname(String str, String str2) {
        String crackEntry;
        String crackEntry2;
        String str3 = str + str2.replace('.', '/') + ".xsb";
        ResourceLoader resourceLoader = this._resourceLoader;
        if (resourceLoader != null && (crackEntry2 = crackEntry(resourceLoader, str3)) != null) {
            return getTypeSystemOnClasspath(crackEntry2);
        }
        ClassLoader classLoader = this._classLoader;
        if (classLoader == null || (crackEntry = crackEntry(classLoader, str3)) == null) {
            return null;
        }
        return getTypeSystemOnClassloader(crackEntry);
    }

    public SchemaTypeSystemImpl typeSystemForComponent(String str, QName qName) {
        String str2 = str + QNameHelper.hexsafedir(qName) + ".xsb";
        ResourceLoader resourceLoader = this._resourceLoader;
        String crackEntry = resourceLoader != null ? crackEntry(resourceLoader, str2) : null;
        ClassLoader classLoader = this._classLoader;
        if (classLoader != null) {
            crackEntry = crackEntry(classLoader, str2);
        }
        if (crackEntry != null) {
            return (SchemaTypeSystemImpl) typeSystemForName(crackEntry);
        }
        return null;
    }

    public SchemaTypeSystem typeSystemForName(String str) {
        SchemaTypeSystemImpl typeSystemOnClassloader;
        SchemaTypeSystemImpl typeSystemOnClasspath;
        if (this._resourceLoader != null && (typeSystemOnClasspath = getTypeSystemOnClasspath(str)) != null) {
            return typeSystemOnClasspath;
        }
        if (this._classLoader == null || (typeSystemOnClassloader = getTypeSystemOnClassloader(str)) == null) {
            return null;
        }
        return typeSystemOnClassloader;
    }

    public static SchemaTypeLoader build(SchemaTypeLoader[] schemaTypeLoaderArr, ResourceLoader resourceLoader, ClassLoader classLoader, String str) {
        SubLoaderList subLoaderList = new SubLoaderList();
        subLoaderList.add(schemaTypeLoaderArr);
        ClassLoader classLoader2 = classLoader == null ? SchemaDocument.class.getClassLoader() : classLoader;
        for (String str2 : basePackage) {
            for (String str3 : baseSchemas) {
                try {
                    subLoaderList.add((SchemaTypeLoader) Class.forName(str2 + ".system." + str3 + ".TypeSystemHolder", true, classLoader2).getDeclaredField("typeSystem").get(null));
                } catch (ClassNotFoundException unused) {
                } catch (Exception e) {
                    throw new XmlRuntimeException(e);
                }
            }
        }
        return new SchemaTypeLoaderImpl(subLoaderList.toArray(), resourceLoader, classLoader, str);
    }

    public static String crackEntry(ClassLoader classLoader, String str) {
        InputStream resourceAsStream = classLoader.getResourceAsStream(str);
        if (resourceAsStream == null) {
            return null;
        }
        return crackPointer(resourceAsStream);
    }

    /* loaded from: classes13.dex */
    public static class SubLoaderList {
        private final Map<SchemaTypeLoader, Object> seen;
        private final List<SchemaTypeLoader> theList;

        private SubLoaderList() {
            this.theList = new ArrayList();
            this.seen = new IdentityHashMap();
        }

        public void add(SchemaTypeLoader[] schemaTypeLoaderArr) {
            if (schemaTypeLoaderArr == null) {
                return;
            }
            for (SchemaTypeLoader schemaTypeLoader : schemaTypeLoaderArr) {
                if (schemaTypeLoader instanceof SchemaTypeLoaderImpl) {
                    SchemaTypeLoaderImpl schemaTypeLoaderImpl = (SchemaTypeLoaderImpl) schemaTypeLoader;
                    if (schemaTypeLoaderImpl._classLoader == null && schemaTypeLoaderImpl._resourceLoader == null) {
                        add(schemaTypeLoaderImpl._searchPath);
                    } else {
                        add(schemaTypeLoaderImpl);
                    }
                } else {
                    add(schemaTypeLoader);
                }
            }
        }

        public SchemaTypeLoader[] toArray() {
            return (SchemaTypeLoader[]) this.theList.toArray(SchemaTypeLoaderImpl.EMPTY_SCHEMATYPELOADER_ARRAY);
        }

        public void add(SchemaTypeLoader schemaTypeLoader) {
            if (schemaTypeLoader == null || this.seen.containsKey(schemaTypeLoader)) {
                return;
            }
            this.theList.add(schemaTypeLoader);
            this.seen.put(schemaTypeLoader, null);
        }
    }
}
