.class public final synthetic Lcom/sunia/HTREnginev2/iso;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;


# instance fields
.field public final synthetic a:Lorg/apache/poi/ss/usermodel/Name;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/usermodel/Name;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/iso;->a:Lorg/apache/poi/ss/usermodel/Name;

    return-void
.end method


# virtual methods
.method public final configureReference(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iso;->a:Lorg/apache/poi/ss/usermodel/Name;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->j(Lorg/apache/poi/ss/usermodel/Name;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V

    return-void
.end method
