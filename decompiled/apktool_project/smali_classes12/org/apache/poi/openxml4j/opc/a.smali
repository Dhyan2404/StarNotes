.class public final synthetic Lorg/apache/poi/openxml4j/opc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->w(Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;)Z

    move-result p0

    return p0
.end method
