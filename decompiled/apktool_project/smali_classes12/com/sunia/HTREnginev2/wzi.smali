.class public final synthetic Lcom/sunia/HTREnginev2/wzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/util/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/wzi;->a:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/wzi;->a:I

    invoke-static {p0}, Lorg/apache/poi/hwpf/util/LittleEndianCP950Reader;->f(I)Lorg/apache/logging/log4j/message/Message;

    move-result-object p0

    return-object p0
.end method
