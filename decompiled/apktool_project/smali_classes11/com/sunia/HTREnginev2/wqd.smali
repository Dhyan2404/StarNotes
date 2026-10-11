.class public final synthetic Lcom/sunia/HTREnginev2/wqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wqd;->a:Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wqd;->a:Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;

    invoke-static {p0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;->g(Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;)Lonyx/org/apache/commons/io/input/CharSequenceInputStream;

    move-result-object p0

    return-object p0
.end method
