package org.apache.xmlbeans.impl.config;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.type.ReferenceType;
import com.github.javaparser.ast.type.TypeParameter;
import com.github.javaparser.resolution.MethodUsage;
import com.github.javaparser.resolution.types.ResolvedType;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.xmlbeans.InterfaceExtension;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.config.InterfaceExtensionImpl;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.Extensionconfig;

/* loaded from: classes13.dex */
public class InterfaceExtensionImpl implements InterfaceExtension {
    private String _delegateToClassName;
    private String _interfaceClassName;
    private MethodSignatureImpl[] _methods;
    private NameSet _xbeanSet;

    /* loaded from: classes13.dex */
    public static class MethodSignatureImpl implements InterfaceExtension.MethodSignature {
        private final String[] _exceptions;
        private final String _intfName;
        private final String _name;
        private final String[] _paramNames;
        private final String[] _params;
        private final String _return;
        private String _signature;
        private final int NOTINITIALIZED = -1;
        private int _hashCode = -1;

        public MethodSignatureImpl(String str, MethodDeclaration methodDeclaration) {
            String str2;
            if (str == null || methodDeclaration == null) {
                throw new IllegalArgumentException("Interface: " + str + " method: " + methodDeclaration);
            }
            this._intfName = str;
            this._signature = null;
            this._name = methodDeclaration.getName().asString();
            String str3 = (String) methodDeclaration.getTypeParameters().stream().map(new Function() { // from class: org.apache.xmlbeans.impl.config.d
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String node;
                    node = ((TypeParameter) obj).toString();
                    return node;
                }
            }).collect(Collectors.joining(", "));
            StringBuilder sb = new StringBuilder();
            if (str3.length() == 0) {
                str2 = "";
            } else {
                str2 = " <" + str3 + "> ";
            }
            sb.append(str2);
            sb.append(replaceInner(methodDeclaration.getType().resolve().describe()));
            this._return = sb.toString();
            this._params = (String[]) methodDeclaration.getParameters().stream().map(new Function() { // from class: org.apache.xmlbeans.impl.config.e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String lambda$new$0;
                    lambda$new$0 = InterfaceExtensionImpl.MethodSignatureImpl.lambda$new$0((Parameter) obj);
                    return lambda$new$0;
                }
            }).map(new Function() { // from class: org.apache.xmlbeans.impl.config.f
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String replaceInner;
                    replaceInner = InterfaceExtensionImpl.MethodSignatureImpl.replaceInner((String) obj);
                    return replaceInner;
                }
            }).toArray(new IntFunction() { // from class: org.apache.xmlbeans.impl.config.g
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    String[] lambda$new$1;
                    lambda$new$1 = InterfaceExtensionImpl.MethodSignatureImpl.lambda$new$1(i);
                    return lambda$new$1;
                }
            });
            this._exceptions = (String[]) methodDeclaration.getThrownExceptions().stream().map(new Function() { // from class: org.apache.xmlbeans.impl.config.h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String lambda$new$2;
                    lambda$new$2 = InterfaceExtensionImpl.MethodSignatureImpl.lambda$new$2((ReferenceType) obj);
                    return lambda$new$2;
                }
            }).map(new Function() { // from class: org.apache.xmlbeans.impl.config.f
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String replaceInner;
                    replaceInner = InterfaceExtensionImpl.MethodSignatureImpl.replaceInner((String) obj);
                    return replaceInner;
                }
            }).toArray(new IntFunction() { // from class: org.apache.xmlbeans.impl.config.i
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    String[] lambda$new$3;
                    lambda$new$3 = InterfaceExtensionImpl.MethodSignatureImpl.lambda$new$3(i);
                    return lambda$new$3;
                }
            });
            this._paramNames = (String[]) methodDeclaration.getParameters().stream().map(new Function() { // from class: org.apache.xmlbeans.impl.config.j
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String nameAsString;
                    nameAsString = ((Parameter) obj).getNameAsString();
                    return nameAsString;
                }
            }).toArray(new IntFunction() { // from class: org.apache.xmlbeans.impl.config.k
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    String[] lambda$new$5;
                    lambda$new$5 = InterfaceExtensionImpl.MethodSignatureImpl.lambda$new$5(i);
                    return lambda$new$5;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String lambda$new$0(Parameter parameter) {
            return parameter.getType().resolve().describe();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String[] lambda$new$1(int i) {
            return new String[i];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String lambda$new$2(ReferenceType referenceType) {
            return referenceType.resolve().describe();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String[] lambda$new$3(int i) {
            return new String[i];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String[] lambda$new$5(int i) {
            return new String[i];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String replaceInner(String str) {
            return str.replace('$', '.');
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MethodSignatureImpl)) {
                return false;
            }
            MethodSignatureImpl methodSignatureImpl = (MethodSignatureImpl) obj;
            return methodSignatureImpl.getName().equals(getName()) && this._intfName.equals(methodSignatureImpl._intfName) && Arrays.equals(getParameterTypes(), methodSignatureImpl.getParameterTypes());
        }

        @Override // org.apache.xmlbeans.InterfaceExtension.MethodSignature
        public String[] getExceptionTypes() {
            return this._exceptions;
        }

        public String getInterfaceName() {
            return this._intfName;
        }

        @Override // org.apache.xmlbeans.InterfaceExtension.MethodSignature
        public String getName() {
            return this._name;
        }

        @Override // org.apache.xmlbeans.InterfaceExtension.MethodSignature
        public String[] getParameterNames() {
            return this._paramNames;
        }

        @Override // org.apache.xmlbeans.InterfaceExtension.MethodSignature
        public String[] getParameterTypes() {
            return this._params;
        }

        @Override // org.apache.xmlbeans.InterfaceExtension.MethodSignature
        public String getReturnType() {
            return this._return;
        }

        public String getSignature() {
            String str = this._signature;
            if (str != null) {
                return str;
            }
            String str2 = this._name + MotionUtils.f31761c + String.join(" ,", this._params) + MotionUtils.f31762d;
            this._signature = str2;
            return str2;
        }

        public int hashCode() {
            int i = this._hashCode;
            if (i != -1) {
                return i;
            }
            int hash = Objects.hash(getName(), Integer.valueOf(Arrays.hashCode(getParameterTypes())), this._intfName);
            this._hashCode = hash;
            return hash;
        }

        public String toString() {
            return getReturnType() + " " + getSignature();
        }
    }

    public static MethodDeclaration getMethod(ClassOrInterfaceDeclaration classOrInterfaceDeclaration, String str, final String[] strArr) {
        return (MethodDeclaration) classOrInterfaceDeclaration.getMethodsByName(str).stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.epi
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getMethod$7;
                lambda$getMethod$7 = InterfaceExtensionImpl.lambda$getMethod$7(strArr, (MethodDeclaration) obj);
                return lambda$getMethod$7;
            }
        }).findFirst().orElse(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getMethod$7(String[] strArr, MethodDeclaration methodDeclaration) {
        return parameterMatches(paramStrings(methodDeclaration.getParameters()), strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$paramStrings$8(Node node) {
        return node instanceof Parameter ? ((Parameter) node).getType().resolve().describe() : node instanceof TypeParameter ? ((TypeParameter) node).getNameAsString() : "unknown";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$paramStrings$9(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$validateMethod$5(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$validateMethod$6(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$validateMethods$0(MethodUsage methodUsage) {
        return !Object.class.getName().equals(methodUsage.declaringType().getQualifiedName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ MethodSignatureImpl lambda$validateMethods$2(MethodDeclaration methodDeclaration) {
        if (methodDeclaration == null) {
            return null;
        }
        return new MethodSignatureImpl(getStaticHandler(), methodDeclaration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ MethodSignatureImpl[] lambda$validateMethods$3(int i) {
        return new MethodSignatureImpl[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean matchParams(MethodUsage methodUsage, MethodDeclaration methodDeclaration) {
        List paramTypes = methodUsage.getParamTypes();
        NodeList parameters = methodDeclaration.getParameters();
        if (parameters.size() != paramTypes.size() + 1 || !XmlObject.class.getName().equals(parameters.get(0).resolve().describeType())) {
            return false;
        }
        Iterator it2 = paramTypes.iterator();
        int i = 1;
        while (it2.hasNext()) {
            int i2 = i + 1;
            if (!((ResolvedType) it2.next()).describe().equals(parameters.get(i).resolve().describeType())) {
                return false;
            }
            i = i2;
        }
        return true;
    }

    public static InterfaceExtensionImpl newInstance(Parser parser, NameSet nameSet, Extensionconfig.Interface r5) {
        InterfaceExtensionImpl interfaceExtensionImpl = new InterfaceExtensionImpl();
        interfaceExtensionImpl._xbeanSet = nameSet;
        ClassOrInterfaceDeclaration validateInterface = validateInterface(parser, r5.getName(), r5);
        if (validateInterface == null) {
            BindingConfigImpl.error("Interface '" + r5.getStaticHandler() + "' not found.", r5);
            return null;
        }
        interfaceExtensionImpl._interfaceClassName = (String) validateInterface.getFullyQualifiedName().get();
        String staticHandler = r5.getStaticHandler();
        interfaceExtensionImpl._delegateToClassName = staticHandler;
        ClassOrInterfaceDeclaration validateClass = validateClass(parser, staticHandler, r5);
        if (validateClass != null) {
            if (interfaceExtensionImpl.validateMethods(parser, validateInterface, validateClass, r5)) {
                return interfaceExtensionImpl;
            }
            return null;
        }
        BindingConfigImpl.warning("Handler class '" + r5.getStaticHandler() + "' not found on classpath, skip validation.", r5);
        return interfaceExtensionImpl;
    }

    private static String[] paramStrings(NodeList<?> nodeList) {
        return (String[]) nodeList.stream().map(new Function() { // from class: com.sunia.HTREnginev2.voi
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$paramStrings$8;
                lambda$paramStrings$8 = InterfaceExtensionImpl.lambda$paramStrings$8((Node) obj);
                return lambda$paramStrings$8;
            }
        }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.yoi
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$paramStrings$9;
                lambda$paramStrings$9 = InterfaceExtensionImpl.lambda$paramStrings$9(i);
                return lambda$paramStrings$9;
            }
        });
    }

    private static boolean parameterMatches(String[] strArr, String[] strArr2) {
        if (strArr.length != strArr2.length) {
            return false;
        }
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            String str2 = strArr2[i];
            if (!str.contains(".")) {
                str2 = str;
                str = str2;
            }
            if (!str.endsWith(str2)) {
                return false;
            }
        }
        return true;
    }

    public static ClassOrInterfaceDeclaration validateClass(Parser parser, String str, XmlObject xmlObject) {
        return validateJava(parser, str, false, xmlObject);
    }

    private static ClassOrInterfaceDeclaration validateInterface(Parser parser, String str, XmlObject xmlObject) {
        return validateJava(parser, str, true, xmlObject);
    }

    public static ClassOrInterfaceDeclaration validateJava(Parser parser, String str, boolean z, XmlObject xmlObject) {
        if (parser == null) {
            return null;
        }
        String str2 = z ? "Interface" : "Class";
        ClassOrInterfaceDeclaration loadSource = parser.loadSource(str);
        if (loadSource == null) {
            BindingConfigImpl.error(str2 + " '" + str + "' not found.", xmlObject);
            return null;
        }
        if (z != loadSource.isInterface()) {
            StringBuilder sb = new StringBuilder();
            sb.append(CloudStorageConstants.SINGLE_QUOTES);
            sb.append(str);
            sb.append("' must be ");
            sb.append(z ? "an interface" : "a class");
            sb.append(".");
            BindingConfigImpl.error(sb.toString(), xmlObject);
        }
        if (!loadSource.isPublic()) {
            BindingConfigImpl.error(str2 + " '" + str + "' is not public.", xmlObject);
        }
        return loadSource;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: validateMethod, reason: merged with bridge method [inline-methods] */
    public MethodDeclaration lambda$validateMethods$1(ClassOrInterfaceDeclaration classOrInterfaceDeclaration, ClassOrInterfaceDeclaration classOrInterfaceDeclaration2, final MethodUsage methodUsage, XmlObject xmlObject) {
        String name = methodUsage.getName();
        MethodDeclaration methodDeclaration = (MethodDeclaration) classOrInterfaceDeclaration2.getMethodsByName(name).stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.zoi
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean matchParams;
                matchParams = InterfaceExtensionImpl.matchParams(methodUsage, (MethodDeclaration) obj);
                return matchParams;
            }
        }).findFirst().orElse(null);
        String str = (String) classOrInterfaceDeclaration2.getFullyQualifiedName().orElse("");
        String str2 = name + MotionUtils.f31761c + methodUsage.getParamTypes().toString() + MotionUtils.f31762d;
        String str3 = (String) classOrInterfaceDeclaration.getFullyQualifiedName().orElse("");
        if (methodDeclaration == null) {
            BindingConfigImpl.error("Handler class '" + str + "' does not contain method " + str2, xmlObject);
            return null;
        }
        if (!Arrays.equals((String[]) methodUsage.getDeclaration().getSpecifiedExceptions().stream().map(new Function() { // from class: com.sunia.HTREnginev2.api
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ResolvedType) obj).describe();
            }
        }).sorted().toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.bpi
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$validateMethod$5;
                lambda$validateMethod$5 = InterfaceExtensionImpl.lambda$validateMethod$5(i);
                return lambda$validateMethod$5;
            }
        }), (String[]) methodDeclaration.getThrownExceptions().stream().map(new Function() { // from class: com.sunia.HTREnginev2.cpi
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ResolvedType resolve;
                resolve = ((ReferenceType) obj).resolve();
                return resolve;
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.api
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ResolvedType) obj).describe();
            }
        }).sorted().toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.dpi
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$validateMethod$6;
                lambda$validateMethod$6 = InterfaceExtensionImpl.lambda$validateMethod$6(i);
                return lambda$validateMethod$6;
            }
        }))) {
            BindingConfigImpl.error("Handler method '" + str + "." + name + "' must declare the same exceptions as the interface method '" + str3 + "." + str2, xmlObject);
            return null;
        }
        if (!methodDeclaration.isPublic() || !methodDeclaration.isStatic()) {
            BindingConfigImpl.error("Method '" + str + "." + str2 + "' must be declared public and static.", xmlObject);
            return null;
        }
        if (methodUsage.getDeclaration().getReturnType().equals(methodDeclaration.resolve().getReturnType())) {
            return methodDeclaration;
        }
        String describe = methodUsage.getDeclaration().getReturnType().describe();
        BindingConfigImpl.error("Return type for method '" + describe + " " + str + "." + name + "(...)' does not match the return type of the interface method :'" + describe + "'.", xmlObject);
        return null;
    }

    private boolean validateMethods(Parser parser, final ClassOrInterfaceDeclaration classOrInterfaceDeclaration, final ClassOrInterfaceDeclaration classOrInterfaceDeclaration2, final XmlObject xmlObject) {
        MethodSignatureImpl[] methodSignatureImplArr = (MethodSignatureImpl[]) classOrInterfaceDeclaration.resolve().getAllMethods().stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.fpi
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$validateMethods$0;
                lambda$validateMethods$0 = InterfaceExtensionImpl.lambda$validateMethods$0((MethodUsage) obj);
                return lambda$validateMethods$0;
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.gpi
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                MethodDeclaration lambda$validateMethods$1;
                lambda$validateMethods$1 = InterfaceExtensionImpl.this.lambda$validateMethods$1(classOrInterfaceDeclaration, classOrInterfaceDeclaration2, xmlObject, (MethodUsage) obj);
                return lambda$validateMethods$1;
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.woi
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                InterfaceExtensionImpl.MethodSignatureImpl lambda$validateMethods$2;
                lambda$validateMethods$2 = InterfaceExtensionImpl.this.lambda$validateMethods$2((MethodDeclaration) obj);
                return lambda$validateMethods$2;
            }
        }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.xoi
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                InterfaceExtensionImpl.MethodSignatureImpl[] lambda$validateMethods$3;
                lambda$validateMethods$3 = InterfaceExtensionImpl.lambda$validateMethods$3(i);
                return lambda$validateMethods$3;
            }
        });
        this._methods = methodSignatureImplArr;
        return Stream.of((Object[]) methodSignatureImplArr).allMatch(new Predicate() { // from class: org.apache.xmlbeans.impl.config.c
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((InterfaceExtensionImpl.MethodSignatureImpl) obj);
            }
        });
    }

    public boolean contains(String str) {
        return this._xbeanSet.contains(str);
    }

    @Override // org.apache.xmlbeans.InterfaceExtension
    public String getInterface() {
        return this._interfaceClassName;
    }

    @Override // org.apache.xmlbeans.InterfaceExtension
    public InterfaceExtension.MethodSignature[] getMethods() {
        return this._methods;
    }

    @Override // org.apache.xmlbeans.InterfaceExtension
    public String getStaticHandler() {
        return this._delegateToClassName;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("  static handler: ");
        sb.append(this._delegateToClassName);
        sb.append("\n");
        sb.append("  interface: ");
        sb.append(this._interfaceClassName);
        sb.append("\n");
        sb.append("  name set: ");
        sb.append(this._xbeanSet);
        sb.append("\n");
        for (int i = 0; i < this._methods.length; i++) {
            sb.append("  method[");
            sb.append(i);
            sb.append("]=");
            sb.append(this._methods[i]);
            sb.append("\n");
        }
        return sb.toString();
    }
}
