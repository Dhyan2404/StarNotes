.class public final synthetic Lcom/sunia/HTREnginev2/ktf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/ddf/EscherClientDataRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ddf/EscherClientDataRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ktf;->e:Lorg/apache/poi/ddf/EscherClientDataRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ktf;->e:Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->a(Lorg/apache/poi/ddf/EscherClientDataRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
