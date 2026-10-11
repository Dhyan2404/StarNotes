.class public final synthetic Lcom/sunia/HTREnginev2/vzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/util/Supplier;


# instance fields
.field public final synthetic a:Lorg/apache/poi/hwpf/util/LittleEndianCP950Reader;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hwpf/util/LittleEndianCP950Reader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vzi;->a:Lorg/apache/poi/hwpf/util/LittleEndianCP950Reader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vzi;->a:Lorg/apache/poi/hwpf/util/LittleEndianCP950Reader;

    invoke-static {p0}, Lorg/apache/poi/hwpf/util/LittleEndianCP950Reader;->j(Lorg/apache/poi/hwpf/util/LittleEndianCP950Reader;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p0

    return-object p0
.end method
