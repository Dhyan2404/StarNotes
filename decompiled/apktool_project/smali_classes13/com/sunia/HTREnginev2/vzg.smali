.class public final synthetic Lcom/sunia/HTREnginev2/vzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Ljava/util/function/Supplier;

.field public final synthetic f:[I

.field public final synthetic g:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;[I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vzg;->e:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vzg;->f:[I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/vzg;->g:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vzg;->e:Ljava/util/function/Supplier;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vzg;->f:[I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vzg;->g:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/GenericRecordUtil;->b(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    move-result-object p0

    return-object p0
.end method
