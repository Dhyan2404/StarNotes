.class public final synthetic Lcom/sunia/HTREnginev2/kso;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/kso;->e:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/kso;->e:I

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->g0(ILorg/apache/poi/xssf/usermodel/XSSFComment;Lorg/apache/poi/xssf/usermodel/XSSFComment;)I

    move-result p0

    return p0
.end method
