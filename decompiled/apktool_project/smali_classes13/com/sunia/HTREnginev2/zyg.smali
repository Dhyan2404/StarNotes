.class public final synthetic Lcom/sunia/HTREnginev2/zyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/util/GenericRecordJsonWriter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/util/GenericRecordJsonWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zyg;->e:Lorg/apache/poi/util/GenericRecordJsonWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zyg;->e:Lorg/apache/poi/util/GenericRecordJsonWriter;

    invoke-static {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->w(Lorg/apache/poi/util/GenericRecordJsonWriter;Ljava/lang/Object;)V

    return-void
.end method
