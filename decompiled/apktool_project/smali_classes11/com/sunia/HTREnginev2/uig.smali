.class public final synthetic Lcom/sunia/HTREnginev2/uig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic a:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uig;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uig;->a:Ljava/io/File;

    invoke-static {p0}, Lonyx/org/apache/commons/io/FileUtils;->q(Ljava/io/File;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
