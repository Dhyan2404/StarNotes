.class public final synthetic Lcom/sunia/HTREnginev2/uso;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uso;->e:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uso;->e:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-static {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->w(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)Z

    move-result p0

    return p0
.end method
