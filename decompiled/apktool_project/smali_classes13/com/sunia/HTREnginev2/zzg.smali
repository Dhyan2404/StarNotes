.class public final synthetic Lcom/sunia/HTREnginev2/zzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zzg;->e:Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    iput p2, p0, Lcom/sunia/HTREnginev2/zzg;->f:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zzg;->e:Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    iget p0, p0, Lcom/sunia/HTREnginev2/zzg;->f:I

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->a(Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
