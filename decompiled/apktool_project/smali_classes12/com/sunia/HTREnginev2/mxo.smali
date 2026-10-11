.class public final synthetic Lcom/sunia/HTREnginev2/mxo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/util/Supplier;


# instance fields
.field public final synthetic a:Lorg/apache/poi/openxml4j/opc/PackagePartName;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mxo;->a:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mxo;->a:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->H(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p0

    return-object p0
.end method
