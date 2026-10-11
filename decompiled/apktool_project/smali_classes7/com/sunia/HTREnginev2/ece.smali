.class public final synthetic Lcom/sunia/HTREnginev2/ece;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic e:Landroid/text/Spanned;


# direct methods
.method public synthetic constructor <init>(Landroid/text/Spanned;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ece;->e:Landroid/text/Spanned;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ece;->e:Landroid/text/Spanned;

    check-cast p1, Landroid/text/style/CharacterStyle;

    check-cast p2, Landroid/text/style/CharacterStyle;

    invoke-static {p0, p1, p2}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->a(Landroid/text/Spanned;Landroid/text/style/CharacterStyle;Landroid/text/style/CharacterStyle;)I

    move-result p0

    return p0
.end method
