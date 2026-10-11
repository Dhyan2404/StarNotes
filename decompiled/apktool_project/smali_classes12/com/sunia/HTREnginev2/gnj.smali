.class public final synthetic Lcom/sunia/HTREnginev2/gnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gnj;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gnj;->a:[Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages;->a([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
