.class public final synthetic Lcom/sunia/HTREnginev2/ofi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOSupplier;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lonyx/org/apache/commons/io/IOUtils;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
