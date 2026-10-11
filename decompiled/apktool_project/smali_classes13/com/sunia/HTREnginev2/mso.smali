.class public final synthetic Lcom/sunia/HTREnginev2/mso;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;


# instance fields
.field public final synthetic a:Lorg/apache/poi/ss/util/AreaReference;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mso;->a:Lorg/apache/poi/ss/util/AreaReference;

    return-void
.end method


# virtual methods
.method public final configureReference(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mso;->a:Lorg/apache/poi/ss/util/AreaReference;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->e0(Lorg/apache/poi/ss/util/AreaReference;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V

    return-void
.end method
