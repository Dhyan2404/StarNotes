.class public final synthetic Lcom/sunia/HTREnginev2/oel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/util/Supplier;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/oel;->a:J

    iput p3, p0, Lcom/sunia/HTREnginev2/oel;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/oel;->a:J

    iget p0, p0, Lcom/sunia/HTREnginev2/oel;->b:I

    invoke-static {v0, v1, p0}, Lorg/apache/poi/hslf/record/Record;->a(JI)Lorg/apache/logging/log4j/message/Message;

    move-result-object p0

    return-object p0
.end method
