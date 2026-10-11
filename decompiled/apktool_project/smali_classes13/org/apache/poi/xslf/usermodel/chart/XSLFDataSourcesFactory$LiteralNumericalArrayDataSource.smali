.class Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$LiteralNumericalArrayDataSource;
.super Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$NumericalArrayDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiteralNumericalArrayDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ">",
        "Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$NumericalArrayDataSource<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>([Ljava/lang/Number;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/xslf/usermodel/chart/XSLFDataSourcesFactory$NumericalArrayDataSource;-><init>([Ljava/lang/Number;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public isLiteral()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
