.class public Lcom/sunia/HTREnginev2/kvk$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/kvk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/onegravity/rteditor/spans/RTParagraphSpan;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/spans/RTParagraphSpan<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/onegravity/rteditor/utils/Paragraph;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/spans/RTParagraphSpan;Lcom/onegravity/rteditor/utils/Paragraph;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/spans/RTParagraphSpan<",
            "TV;>;",
            "Lcom/onegravity/rteditor/utils/Paragraph;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kvk$a;->a:Lcom/onegravity/rteditor/spans/RTParagraphSpan;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kvk$a;->b:Lcom/onegravity/rteditor/utils/Paragraph;

    iput-boolean p3, p0, Lcom/sunia/HTREnginev2/kvk$a;->c:Z

    return-void
.end method
