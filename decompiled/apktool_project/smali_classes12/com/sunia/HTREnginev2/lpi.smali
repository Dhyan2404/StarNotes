.class public final synthetic Lcom/sunia/HTREnginev2/lpi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:S

.field public final synthetic c:I

.field public final synthetic d:S


# direct methods
.method public synthetic constructor <init>(ISIS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/lpi;->a:I

    iput-short p2, p0, Lcom/sunia/HTREnginev2/lpi;->b:S

    iput p3, p0, Lcom/sunia/HTREnginev2/lpi;->c:I

    iput-short p4, p0, Lcom/sunia/HTREnginev2/lpi;->d:S

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/sunia/HTREnginev2/lpi;->a:I

    iget-short v1, p0, Lcom/sunia/HTREnginev2/lpi;->b:S

    iget v2, p0, Lcom/sunia/HTREnginev2/lpi;->c:I

    iget-short p0, p0, Lcom/sunia/HTREnginev2/lpi;->d:S

    invoke-static {v0, v1, v2, p0}, Lorg/apache/poi/hssf/model/InternalSheet;->a(ISIS)Lorg/apache/logging/log4j/message/Message;

    move-result-object p0

    return-object p0
.end method
