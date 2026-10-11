.class public final synthetic Lorg/apache/poi/hssf/record/pivottable/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/d;->e:Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/d;->e:Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->b(Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
