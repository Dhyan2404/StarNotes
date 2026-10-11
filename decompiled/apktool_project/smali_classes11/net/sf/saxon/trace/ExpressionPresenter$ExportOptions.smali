.class public Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trace/ExpressionPresenter$Options;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/trace/ExpressionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportOptions"
.end annotation


# instance fields
.field public addStaticType:Z

.field public componentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/Component;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public explaining:Z

.field public packageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/style/StylesheetPackage;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public rootPackage:Lnet/sf/saxon/style/StylesheetPackage;

.field public suppressStaticContext:Z

.field public target:Ljava/lang/String;

.field public targetVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;->target:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;->targetVersion:I

    return-void
.end method
