.class public final Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;
.super Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;,
        Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;,
        Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;
    }
.end annotation


# instance fields
.field private localVariablesInfos:[Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;

.field private myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/Verifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    return-void
.end method

.method public static synthetic access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->tostring(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->validInterfaceMethodName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->validFieldName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->validMethodName(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;)[Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->localVariablesInfos:[Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;

    return-object p0
.end method

.method public static synthetic access$600(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->validJavaIdentifier(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->validClassName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->validClassMethodName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private constant_pool_entries_satisfy_static_constraints()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$1;)V

    return-void
.end method

.method private every_class_has_an_accessible_superclass()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    const/4 v1, -0x1

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassNameIndex()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v3

    if-ne p0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Superclass of \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' missing but not "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " itself!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass1()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v2

    sget-object v3, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    if-ne v2, v3, :cond_3

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isFinal()Z

    move-result v3

    if-nez v3, :cond_2

    move-object p0, v2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ancestor class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' has the FINAL access modifier and must therefore not be subclassed."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load in ancestor class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    const-string v0, "Circular superclass hierarchy detected."

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method

.method private field_and_method_refs_are_valid()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$1;)V

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;-><init>(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visit()V

    return-void
.end method

.method private final_methods_are_not_overridden()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    const/4 v1, -0x1

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassNameIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isFinal()Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' in class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' overrides the final (not-overridable) definition in class \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private static tostring(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;-><init>(Lcom/sun/org/apache/bcel/internal/classfile/Node;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static validClassMethodName(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->validMethodName(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static final validClassName(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static validFieldName(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->validJavaIdentifier(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static validInterfaceMethodName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->validJavaLangMethodName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static validJavaIdentifier(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static validJavaLangMethodName(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static validMethodName(Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->validJavaLangMethodName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "<init>"

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "<clinit>"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public do_verify()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass1()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->localVariablesInfos:[Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;

    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->constant_pool_entries_satisfy_static_constraints()V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->field_and_method_refs_are_valid()V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->every_class_has_an_accessible_superclass()V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->final_methods_are_not_overridden()V
    :try_end_0
    .catch Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    sget-object p0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_NOTYET:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    return-object p0
.end method

.method public getLocalVariablesInfo(I)Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->verify()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->localVariablesInfos:[Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;

    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Method number out of range."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
