.class public final synthetic Lcom/sunia/HTREnginev2/lzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lorg/apache/poi/util/GenericRecordJsonWriter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/util/GenericRecordJsonWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lzg;->e:Lorg/apache/poi/util/GenericRecordJsonWriter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lzg;->e:Lorg/apache/poi/util/GenericRecordJsonWriter;

    check-cast p1, Lorg/apache/poi/common/usermodel/GenericRecord;

    invoke-static {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->H(Lorg/apache/poi/util/GenericRecordJsonWriter;Lorg/apache/poi/common/usermodel/GenericRecord;)Z

    move-result p0

    return p0
.end method
