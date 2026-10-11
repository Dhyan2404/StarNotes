.class public final synthetic Lcom/sunia/HTREnginev2/asn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/function/IOIterator;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/asn;->a:Lonyx/org/apache/commons/io/function/IOIterator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/asn;->a:Lonyx/org/apache/commons/io/function/IOIterator;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOIterator;->hasNext()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
