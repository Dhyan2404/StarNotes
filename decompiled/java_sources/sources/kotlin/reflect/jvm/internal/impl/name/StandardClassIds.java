package kotlin.reflect.jvm.internal.impl.name;

import com.couchbase.lite.internal.core.C4Constants;
import com.google.android.exoplayer2.source.dash.manifest.UrlTemplate;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.protobuf.C6883t;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.xmlbeans.impl.schema.SoapEncSchemaTypeSystem;
import org.jetbrains.annotations.NotNull;

@SourceDebugExtension({"SMAP\nStandardClassIds.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StandardClassIds.kt\norg/jetbrains/kotlin/name/StandardClassIds\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,274:1\n1271#2,2:275\n1285#2,4:277\n1271#2,2:281\n1285#2,4:283\n*S KotlinDebug\n*F\n+ 1 StandardClassIds.kt\norg/jetbrains/kotlin/name/StandardClassIds\n*L\n82#1:275,2\n82#1:277,4\n86#1:281,2\n86#1:283,4\n*E\n"})
/* loaded from: classes11.dex */
public final class StandardClassIds {

    @NotNull
    private static final ClassId Annotation;

    @NotNull
    private static final ClassId AnnotationRetention;

    @NotNull
    private static final ClassId AnnotationTarget;

    @NotNull
    private static final ClassId Any;

    @NotNull
    private static final ClassId Array;

    @NotNull
    private static final FqName BASE_ANNOTATION_PACKAGE;

    @NotNull
    private static final FqName BASE_COLLECTIONS_PACKAGE;

    @NotNull
    private static final FqName BASE_CONCURRENT_PACKAGE;

    @NotNull
    private static final FqName BASE_CONTRACTS_PACKAGE;

    @NotNull
    private static final FqName BASE_COROUTINES_PACKAGE;

    @NotNull
    private static final FqName BASE_ENUMS_PACKAGE;

    @NotNull
    private static final FqName BASE_INTERNAL_IR_PACKAGE;

    @NotNull
    private static final FqName BASE_INTERNAL_PACKAGE;

    @NotNull
    private static final FqName BASE_JVM_INTERNAL_PACKAGE;

    @NotNull
    private static final FqName BASE_JVM_PACKAGE;

    @NotNull
    private static final FqName BASE_KOTLIN_PACKAGE;

    @NotNull
    private static final FqName BASE_RANGES_PACKAGE;

    @NotNull
    private static final FqName BASE_REFLECT_PACKAGE;

    @NotNull
    private static final ClassId Boolean;

    @NotNull
    private static final ClassId Byte;

    @NotNull
    private static final ClassId Char;

    @NotNull
    private static final ClassId CharIterator;

    @NotNull
    private static final ClassId CharRange;

    @NotNull
    private static final ClassId CharSequence;

    @NotNull
    private static final ClassId Cloneable;

    @NotNull
    private static final ClassId Collection;

    @NotNull
    private static final ClassId Comparable;

    @NotNull
    private static final ClassId Continuation;

    @NotNull
    private static final ClassId DeprecationLevel;

    @NotNull
    private static final ClassId Double;

    @NotNull
    private static final ClassId Enum;

    @NotNull
    private static final ClassId EnumEntries;

    @NotNull
    private static final ClassId Float;

    @NotNull
    private static final ClassId Function;

    @NotNull
    public static final StandardClassIds INSTANCE = new StandardClassIds();

    @NotNull
    private static final ClassId Int;

    @NotNull
    private static final ClassId IntRange;

    @NotNull
    private static final ClassId Iterable;

    @NotNull
    private static final ClassId Iterator;

    @NotNull
    private static final ClassId KCallable;

    @NotNull
    private static final ClassId KClass;

    @NotNull
    private static final ClassId KFunction;

    @NotNull
    private static final ClassId KMutableProperty;

    @NotNull
    private static final ClassId KMutableProperty0;

    @NotNull
    private static final ClassId KMutableProperty1;

    @NotNull
    private static final ClassId KMutableProperty2;

    @NotNull
    private static final ClassId KProperty;

    @NotNull
    private static final ClassId KProperty0;

    @NotNull
    private static final ClassId KProperty1;

    @NotNull
    private static final ClassId KProperty2;

    @NotNull
    private static final ClassId List;

    @NotNull
    private static final ClassId ListIterator;

    @NotNull
    private static final ClassId Long;

    @NotNull
    private static final ClassId LongRange;

    @NotNull
    private static final ClassId Map;

    @NotNull
    private static final ClassId MapEntry;

    @NotNull
    private static final ClassId MutableCollection;

    @NotNull
    private static final ClassId MutableIterable;

    @NotNull
    private static final ClassId MutableIterator;

    @NotNull
    private static final ClassId MutableList;

    @NotNull
    private static final ClassId MutableListIterator;

    @NotNull
    private static final ClassId MutableMap;

    @NotNull
    private static final ClassId MutableMapEntry;

    @NotNull
    private static final ClassId MutableSet;

    @NotNull
    private static final ClassId Nothing;

    @NotNull
    private static final ClassId Number;

    @NotNull
    private static final ClassId Result;

    @NotNull
    private static final ClassId Set;

    @NotNull
    private static final ClassId Short;

    @NotNull
    private static final ClassId String;

    @NotNull
    private static final ClassId Throwable;

    @NotNull
    private static final ClassId UByte;

    @NotNull
    private static final ClassId UInt;

    @NotNull
    private static final ClassId ULong;

    @NotNull
    private static final ClassId UShort;

    @NotNull
    private static final ClassId Unit;

    @NotNull
    private static final Set<FqName> builtInsPackages;

    @NotNull
    private static final Set<ClassId> constantAllowedTypes;

    @NotNull
    private static final Map<ClassId, ClassId> elementTypeByPrimitiveArrayType;

    @NotNull
    private static final Map<ClassId, ClassId> elementTypeByUnsignedArrayType;

    @NotNull
    private static final Map<ClassId, ClassId> primitiveArrayTypeByElementType;

    @NotNull
    private static final Set<ClassId> primitiveTypes;

    @NotNull
    private static final Map<ClassId, ClassId> unsignedArrayTypeByElementType;

    @NotNull
    private static final Set<ClassId> unsignedTypes;

    static {
        Set<FqName> of;
        Set<ClassId> of2;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Set<ClassId> of3;
        int collectionSizeOrDefault2;
        int mapCapacity2;
        int coerceAtLeast2;
        Set plus;
        Set<ClassId> plus2;
        FqName fqName = new FqName(FirebaseCommonRegistrar.f35527j);
        BASE_KOTLIN_PACKAGE = fqName;
        FqName child = fqName.child(Name.identifier("reflect"));
        Intrinsics.checkNotNullExpressionValue(child, "BASE_KOTLIN_PACKAGE.chil…me.identifier(\"reflect\"))");
        BASE_REFLECT_PACKAGE = child;
        FqName child2 = fqName.child(Name.identifier("collections"));
        Intrinsics.checkNotNullExpressionValue(child2, "BASE_KOTLIN_PACKAGE.chil…dentifier(\"collections\"))");
        BASE_COLLECTIONS_PACKAGE = child2;
        FqName child3 = fqName.child(Name.identifier("ranges"));
        Intrinsics.checkNotNullExpressionValue(child3, "BASE_KOTLIN_PACKAGE.chil…ame.identifier(\"ranges\"))");
        BASE_RANGES_PACKAGE = child3;
        FqName child4 = fqName.child(Name.identifier("jvm"));
        Intrinsics.checkNotNullExpressionValue(child4, "BASE_KOTLIN_PACKAGE.child(Name.identifier(\"jvm\"))");
        BASE_JVM_PACKAGE = child4;
        FqName child5 = child4.child(Name.identifier("internal"));
        Intrinsics.checkNotNullExpressionValue(child5, "BASE_JVM_PACKAGE.child(N…e.identifier(\"internal\"))");
        BASE_JVM_INTERNAL_PACKAGE = child5;
        FqName child6 = fqName.child(Name.identifier("annotation"));
        Intrinsics.checkNotNullExpressionValue(child6, "BASE_KOTLIN_PACKAGE.chil…identifier(\"annotation\"))");
        BASE_ANNOTATION_PACKAGE = child6;
        FqName child7 = fqName.child(Name.identifier("internal"));
        Intrinsics.checkNotNullExpressionValue(child7, "BASE_KOTLIN_PACKAGE.chil…e.identifier(\"internal\"))");
        BASE_INTERNAL_PACKAGE = child7;
        FqName child8 = child7.child(Name.identifier("ir"));
        Intrinsics.checkNotNullExpressionValue(child8, "BASE_INTERNAL_PACKAGE.child(Name.identifier(\"ir\"))");
        BASE_INTERNAL_IR_PACKAGE = child8;
        FqName child9 = fqName.child(Name.identifier("coroutines"));
        Intrinsics.checkNotNullExpressionValue(child9, "BASE_KOTLIN_PACKAGE.chil…identifier(\"coroutines\"))");
        BASE_COROUTINES_PACKAGE = child9;
        FqName child10 = fqName.child(Name.identifier("enums"));
        Intrinsics.checkNotNullExpressionValue(child10, "BASE_KOTLIN_PACKAGE.chil…Name.identifier(\"enums\"))");
        BASE_ENUMS_PACKAGE = child10;
        FqName child11 = fqName.child(Name.identifier("contracts"));
        Intrinsics.checkNotNullExpressionValue(child11, "BASE_KOTLIN_PACKAGE.chil….identifier(\"contracts\"))");
        BASE_CONTRACTS_PACKAGE = child11;
        FqName child12 = fqName.child(Name.identifier("concurrent"));
        Intrinsics.checkNotNullExpressionValue(child12, "BASE_KOTLIN_PACKAGE.chil…identifier(\"concurrent\"))");
        BASE_CONCURRENT_PACKAGE = child12;
        of = SetsKt__SetsKt.setOf((Object[]) new FqName[]{fqName, child2, child3, child6, child, child7, child9});
        builtInsPackages = of;
        Nothing = StandardClassIdsKt.access$baseId("Nothing");
        Unit = StandardClassIdsKt.access$baseId("Unit");
        Any = StandardClassIdsKt.access$baseId("Any");
        Enum = StandardClassIdsKt.access$baseId(C4Constants.LogDomain.ENUM);
        Annotation = StandardClassIdsKt.access$baseId("Annotation");
        Array = StandardClassIdsKt.access$baseId(SoapEncSchemaTypeSystem.SOAP_ARRAY);
        ClassId access$baseId = StandardClassIdsKt.access$baseId("Boolean");
        Boolean = access$baseId;
        ClassId access$baseId2 = StandardClassIdsKt.access$baseId("Char");
        Char = access$baseId2;
        ClassId access$baseId3 = StandardClassIdsKt.access$baseId("Byte");
        Byte = access$baseId3;
        ClassId access$baseId4 = StandardClassIdsKt.access$baseId("Short");
        Short = access$baseId4;
        ClassId access$baseId5 = StandardClassIdsKt.access$baseId("Int");
        Int = access$baseId5;
        ClassId access$baseId6 = StandardClassIdsKt.access$baseId("Long");
        Long = access$baseId6;
        ClassId access$baseId7 = StandardClassIdsKt.access$baseId("Float");
        Float = access$baseId7;
        ClassId access$baseId8 = StandardClassIdsKt.access$baseId("Double");
        Double = access$baseId8;
        UByte = StandardClassIdsKt.access$unsignedId(access$baseId3);
        UShort = StandardClassIdsKt.access$unsignedId(access$baseId4);
        UInt = StandardClassIdsKt.access$unsignedId(access$baseId5);
        ULong = StandardClassIdsKt.access$unsignedId(access$baseId6);
        CharSequence = StandardClassIdsKt.access$baseId("CharSequence");
        String = StandardClassIdsKt.access$baseId("String");
        Throwable = StandardClassIdsKt.access$baseId("Throwable");
        Cloneable = StandardClassIdsKt.access$baseId("Cloneable");
        KProperty = StandardClassIdsKt.access$reflectId("KProperty");
        KMutableProperty = StandardClassIdsKt.access$reflectId("KMutableProperty");
        KProperty0 = StandardClassIdsKt.access$reflectId("KProperty0");
        KMutableProperty0 = StandardClassIdsKt.access$reflectId("KMutableProperty0");
        KProperty1 = StandardClassIdsKt.access$reflectId("KProperty1");
        KMutableProperty1 = StandardClassIdsKt.access$reflectId("KMutableProperty1");
        KProperty2 = StandardClassIdsKt.access$reflectId("KProperty2");
        KMutableProperty2 = StandardClassIdsKt.access$reflectId("KMutableProperty2");
        KFunction = StandardClassIdsKt.access$reflectId("KFunction");
        KClass = StandardClassIdsKt.access$reflectId("KClass");
        KCallable = StandardClassIdsKt.access$reflectId("KCallable");
        Comparable = StandardClassIdsKt.access$baseId("Comparable");
        Number = StandardClassIdsKt.access$baseId(UrlTemplate.f25861f);
        Function = StandardClassIdsKt.access$baseId("Function");
        of2 = SetsKt__SetsKt.setOf((Object[]) new ClassId[]{access$baseId, access$baseId2, access$baseId3, access$baseId4, access$baseId5, access$baseId6, access$baseId7, access$baseId8});
        primitiveTypes = of2;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(of2, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Object obj : of2) {
            Name shortClassName = ((ClassId) obj).getShortClassName();
            Intrinsics.checkNotNullExpressionValue(shortClassName, "id.shortClassName");
            linkedHashMap.put(obj, StandardClassIdsKt.access$primitiveArrayId(shortClassName));
        }
        primitiveArrayTypeByElementType = linkedHashMap;
        elementTypeByPrimitiveArrayType = StandardClassIdsKt.access$inverseMap(linkedHashMap);
        of3 = SetsKt__SetsKt.setOf((Object[]) new ClassId[]{UByte, UShort, UInt, ULong});
        unsignedTypes = of3;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(of3, 10);
        mapCapacity2 = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault2);
        coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(mapCapacity2, 16);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(coerceAtLeast2);
        for (Object obj2 : of3) {
            Name shortClassName2 = ((ClassId) obj2).getShortClassName();
            Intrinsics.checkNotNullExpressionValue(shortClassName2, "id.shortClassName");
            linkedHashMap2.put(obj2, StandardClassIdsKt.access$primitiveArrayId(shortClassName2));
        }
        unsignedArrayTypeByElementType = linkedHashMap2;
        elementTypeByUnsignedArrayType = StandardClassIdsKt.access$inverseMap(linkedHashMap2);
        plus = SetsKt___SetsKt.plus((Set) primitiveTypes, (Iterable) unsignedTypes);
        plus2 = SetsKt___SetsKt.plus((Set<? extends ClassId>) ((Set<? extends Object>) plus), String);
        constantAllowedTypes = plus2;
        Continuation = StandardClassIdsKt.access$coroutinesId("Continuation");
        Iterator = StandardClassIdsKt.access$collectionsId("Iterator");
        Iterable = StandardClassIdsKt.access$collectionsId("Iterable");
        Collection = StandardClassIdsKt.access$collectionsId("Collection");
        List = StandardClassIdsKt.access$collectionsId(C6883t.f38147a);
        ListIterator = StandardClassIdsKt.access$collectionsId("ListIterator");
        Set = StandardClassIdsKt.access$collectionsId("Set");
        ClassId access$collectionsId = StandardClassIdsKt.access$collectionsId(C6883t.f38149c);
        Map = access$collectionsId;
        MutableIterator = StandardClassIdsKt.access$collectionsId("MutableIterator");
        CharIterator = StandardClassIdsKt.access$collectionsId("CharIterator");
        MutableIterable = StandardClassIdsKt.access$collectionsId("MutableIterable");
        MutableCollection = StandardClassIdsKt.access$collectionsId("MutableCollection");
        MutableList = StandardClassIdsKt.access$collectionsId("MutableList");
        MutableListIterator = StandardClassIdsKt.access$collectionsId("MutableListIterator");
        MutableSet = StandardClassIdsKt.access$collectionsId("MutableSet");
        ClassId access$collectionsId2 = StandardClassIdsKt.access$collectionsId("MutableMap");
        MutableMap = access$collectionsId2;
        ClassId createNestedClassId = access$collectionsId.createNestedClassId(Name.identifier("Entry"));
        Intrinsics.checkNotNullExpressionValue(createNestedClassId, "Map.createNestedClassId(Name.identifier(\"Entry\"))");
        MapEntry = createNestedClassId;
        ClassId createNestedClassId2 = access$collectionsId2.createNestedClassId(Name.identifier("MutableEntry"));
        Intrinsics.checkNotNullExpressionValue(createNestedClassId2, "MutableMap.createNestedC…entifier(\"MutableEntry\"))");
        MutableMapEntry = createNestedClassId2;
        Result = StandardClassIdsKt.access$baseId("Result");
        IntRange = StandardClassIdsKt.access$rangesId("IntRange");
        LongRange = StandardClassIdsKt.access$rangesId("LongRange");
        CharRange = StandardClassIdsKt.access$rangesId("CharRange");
        AnnotationRetention = StandardClassIdsKt.access$annotationId("AnnotationRetention");
        AnnotationTarget = StandardClassIdsKt.access$annotationId("AnnotationTarget");
        DeprecationLevel = StandardClassIdsKt.access$baseId("DeprecationLevel");
        EnumEntries = StandardClassIdsKt.access$enumsId("EnumEntries");
    }

    private StandardClassIds() {
    }

    @NotNull
    public final ClassId getArray() {
        return Array;
    }

    @NotNull
    public final FqName getBASE_ANNOTATION_PACKAGE() {
        return BASE_ANNOTATION_PACKAGE;
    }

    @NotNull
    public final FqName getBASE_COLLECTIONS_PACKAGE() {
        return BASE_COLLECTIONS_PACKAGE;
    }

    @NotNull
    public final FqName getBASE_COROUTINES_PACKAGE() {
        return BASE_COROUTINES_PACKAGE;
    }

    @NotNull
    public final FqName getBASE_ENUMS_PACKAGE() {
        return BASE_ENUMS_PACKAGE;
    }

    @NotNull
    public final FqName getBASE_KOTLIN_PACKAGE() {
        return BASE_KOTLIN_PACKAGE;
    }

    @NotNull
    public final FqName getBASE_RANGES_PACKAGE() {
        return BASE_RANGES_PACKAGE;
    }

    @NotNull
    public final FqName getBASE_REFLECT_PACKAGE() {
        return BASE_REFLECT_PACKAGE;
    }

    @NotNull
    public final ClassId getEnumEntries() {
        return EnumEntries;
    }

    @NotNull
    public final ClassId getKClass() {
        return KClass;
    }

    @NotNull
    public final ClassId getKFunction() {
        return KFunction;
    }

    @NotNull
    public final ClassId getMutableList() {
        return MutableList;
    }

    @NotNull
    public final ClassId getMutableMap() {
        return MutableMap;
    }

    @NotNull
    public final ClassId getMutableSet() {
        return MutableSet;
    }
}
