.class public final synthetic Lcom/sunia/HTREnginev2/xqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xqd;->e:Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xqd;->e:Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;

    invoke-static {p0}, Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;->h(Lonyx/org/apache/commons/io/input/CharSequenceInputStream$Builder;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    return-object p0
.end method
