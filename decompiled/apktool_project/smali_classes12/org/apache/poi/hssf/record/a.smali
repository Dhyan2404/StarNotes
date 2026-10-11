.class public final synthetic Lorg/apache/poi/hssf/record/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/a;->e:Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/a;->e:Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->b(Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
