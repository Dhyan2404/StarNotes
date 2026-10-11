.class public final synthetic Lorg/apache/poi/hssf/record/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/j;->e:Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/j;->e:Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;->b(Lorg/apache/poi/hssf/record/MulRKRecord$RkRec;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
