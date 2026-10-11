.class public final synthetic Lcom/sunia/HTREnginev2/wzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:[Ljava/lang/Enum;

.field public final synthetic g:Ljava/lang/Enum;


# direct methods
.method public synthetic constructor <init>(I[Ljava/lang/Enum;Ljava/lang/Enum;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/wzg;->e:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/wzg;->f:[Ljava/lang/Enum;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/wzg;->g:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/sunia/HTREnginev2/wzg;->e:I

    iget-object v1, p0, Lcom/sunia/HTREnginev2/wzg;->f:[Ljava/lang/Enum;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wzg;->g:Ljava/lang/Enum;

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/GenericRecordUtil;->c(I[Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method
