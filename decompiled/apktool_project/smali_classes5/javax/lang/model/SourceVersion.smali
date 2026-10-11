.class public final enum Ljavax/lang/model/SourceVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/lang/model/SourceVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_0:Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_1:Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_2:Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_3:Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_4:Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_5:Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_6:Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_7:Ljavax/lang/model/SourceVersion;

.field public static final enum RELEASE_8:Ljavax/lang/model/SourceVersion;

.field private static final keywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final latestSupported:Ljavax/lang/model/SourceVersion;


# direct methods
.method public static constructor <clinit>()V
    .locals 63

    new-instance v0, Ljavax/lang/model/SourceVersion;

    const-string v1, "RELEASE_0"

    const/4 v9, 0x0

    invoke-direct {v0, v1, v9}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_0:Ljavax/lang/model/SourceVersion;

    new-instance v1, Ljavax/lang/model/SourceVersion;

    const-string v2, "RELEASE_1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/lang/model/SourceVersion;->RELEASE_1:Ljavax/lang/model/SourceVersion;

    new-instance v2, Ljavax/lang/model/SourceVersion;

    const-string v3, "RELEASE_2"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ljavax/lang/model/SourceVersion;->RELEASE_2:Ljavax/lang/model/SourceVersion;

    new-instance v3, Ljavax/lang/model/SourceVersion;

    const-string v4, "RELEASE_3"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljavax/lang/model/SourceVersion;->RELEASE_3:Ljavax/lang/model/SourceVersion;

    new-instance v4, Ljavax/lang/model/SourceVersion;

    const-string v5, "RELEASE_4"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v4, Ljavax/lang/model/SourceVersion;->RELEASE_4:Ljavax/lang/model/SourceVersion;

    new-instance v5, Ljavax/lang/model/SourceVersion;

    const-string v6, "RELEASE_5"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljavax/lang/model/SourceVersion;->RELEASE_5:Ljavax/lang/model/SourceVersion;

    new-instance v6, Ljavax/lang/model/SourceVersion;

    const-string v7, "RELEASE_6"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v6, Ljavax/lang/model/SourceVersion;->RELEASE_6:Ljavax/lang/model/SourceVersion;

    new-instance v7, Ljavax/lang/model/SourceVersion;

    const-string v8, "RELEASE_7"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ljavax/lang/model/SourceVersion;->RELEASE_7:Ljavax/lang/model/SourceVersion;

    new-instance v8, Ljavax/lang/model/SourceVersion;

    const-string v10, "RELEASE_8"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11}, Ljavax/lang/model/SourceVersion;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ljavax/lang/model/SourceVersion;->RELEASE_8:Ljavax/lang/model/SourceVersion;

    filled-new-array/range {v0 .. v8}, [Ljavax/lang/model/SourceVersion;

    move-result-object v0

    sput-object v0, Ljavax/lang/model/SourceVersion;->$VALUES:[Ljavax/lang/model/SourceVersion;

    invoke-static {}, Ljavax/lang/model/SourceVersion;->getLatestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    sput-object v0, Ljavax/lang/model/SourceVersion;->latestSupported:Ljavax/lang/model/SourceVersion;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v10, "abstract"

    const-string v11, "continue"

    const-string v12, "for"

    const-string v13, "new"

    const-string v14, "switch"

    const-string v15, "assert"

    const-string v16, "default"

    const-string v17, "if"

    const-string v18, "package"

    const-string v19, "synchronized"

    const-string v20, "boolean"

    const-string v21, "do"

    const-string v22, "goto"

    const-string v23, "private"

    const-string v24, "this"

    const-string v25, "break"

    const-string v26, "double"

    const-string v27, "implements"

    const-string v28, "protected"

    const-string v29, "throw"

    const-string v30, "byte"

    const-string v31, "else"

    const-string v32, "import"

    const-string v33, "public"

    const-string v34, "throws"

    const-string v35, "case"

    const-string v36, "enum"

    const-string v37, "instanceof"

    const-string v38, "return"

    const-string v39, "transient"

    const-string v40, "catch"

    const-string v41, "extends"

    const-string v42, "int"

    const-string v43, "short"

    const-string v44, "try"

    const-string v45, "char"

    const-string v46, "final"

    const-string v47, "interface"

    const-string v48, "static"

    const-string v49, "void"

    const-string v50, "class"

    const-string v51, "finally"

    const-string v52, "long"

    const-string v53, "strictfp"

    const-string v54, "volatile"

    const-string v55, "const"

    const-string v56, "float"

    const-string v57, "native"

    const-string v58, "super"

    const-string v59, "while"

    const-string v60, "null"

    const-string v61, "true"

    const-string v62, "false"

    filled-new-array/range {v10 .. v62}, [Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 v2, 0x35

    if-ge v9, v2, :cond_0

    aget-object v2, v1, v9

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljavax/lang/model/SourceVersion;->keywords:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static getLatestSupported()Ljavax/lang/model/SourceVersion;
    .locals 2

    :try_start_0
    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_8:Ljavax/lang/model/SourceVersion;

    return-object v0

    :cond_0
    const-string v1, "1.7"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_7:Ljavax/lang/model/SourceVersion;

    return-object v0

    :cond_1
    const-string v1, "1.6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_6:Ljavax/lang/model/SourceVersion;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_5:Ljavax/lang/model/SourceVersion;

    return-object v0
.end method

.method public static isIdentifier(Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isKeyword(Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljavax/lang/model/SourceVersion;->keywords:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isName(Ljava/lang/CharSequence;)Z
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\."

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-static {v3}, Ljavax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Ljavax/lang/model/SourceVersion;->isKeyword(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static latest()Ljavax/lang/model/SourceVersion;
    .locals 1

    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_8:Ljavax/lang/model/SourceVersion;

    return-object v0
.end method

.method public static latestSupported()Ljavax/lang/model/SourceVersion;
    .locals 1

    sget-object v0, Ljavax/lang/model/SourceVersion;->latestSupported:Ljavax/lang/model/SourceVersion;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/lang/model/SourceVersion;
    .locals 1

    const-class v0, Ljavax/lang/model/SourceVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/SourceVersion;

    return-object p0
.end method

.method public static values()[Ljavax/lang/model/SourceVersion;
    .locals 1

    sget-object v0, Ljavax/lang/model/SourceVersion;->$VALUES:[Ljavax/lang/model/SourceVersion;

    invoke-virtual {v0}, [Ljavax/lang/model/SourceVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/lang/model/SourceVersion;

    return-object v0
.end method
