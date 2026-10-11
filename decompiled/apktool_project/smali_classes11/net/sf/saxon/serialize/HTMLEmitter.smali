.class public abstract Lnet/sf/saxon/serialize/HTMLEmitter;
.super Lnet/sf/saxon/serialize/XMLEmitter;
.source "SourceFile"


# static fields
.field public static final J:I = 0x3

.field public static O:Lnet/sf/saxon/serialize/HTMLTagHashSet; = null

.field public static final Q:Lnet/sf/saxon/serialize/HTMLTagHashSet;

.field public static final Z:Lnet/sf/saxon/serialize/HTMLTagHashSet;

.field public static final synthetic k0:Z = false

.field public static final x:I = 0x0

.field public static final y:I = 0x1

.field public static final z:I = 0x2


# instance fields
.field public final q:I

.field public final r:I

.field public s:I

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Z

.field protected version:I

.field public final w:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/NodeName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lnet/sf/saxon/serialize/HTMLTagHashSet;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Lnet/sf/saxon/serialize/HTMLTagHashSet;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/serialize/HTMLEmitter;->O:Lnet/sf/saxon/serialize/HTMLTagHashSet;

    new-instance v0, Lnet/sf/saxon/serialize/HTMLTagHashSet;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Lnet/sf/saxon/serialize/HTMLTagHashSet;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/serialize/HTMLEmitter;->Q:Lnet/sf/saxon/serialize/HTMLTagHashSet;

    new-instance v0, Lnet/sf/saxon/serialize/HTMLTagHashSet;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Lnet/sf/saxon/serialize/HTMLTagHashSet;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/serialize/HTMLEmitter;->Z:Lnet/sf/saxon/serialize/HTMLTagHashSet;

    const-string v0, "*"

    const-string v1, "hidden"

    invoke-static {v0, v1}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "area"

    const-string v1, "nohref"

    invoke-static {v0, v1}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio"

    const-string v1, "autoplay"

    invoke-static {v0, v1}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "controls"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "loop"

    invoke-static {v0, v3}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "muted"

    invoke-static {v0, v4}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "button"

    const-string v5, "disabled"

    invoke-static {v0, v5}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "autofocus"

    invoke-static {v0, v6}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "formnovalidate"

    invoke-static {v0, v7}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "details"

    const-string v8, "open"

    invoke-static {v0, v8}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dialog"

    invoke-static {v0, v8}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dir"

    const-string v8, "compact"

    invoke-static {v0, v8}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dl"

    invoke-static {v0, v8}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fieldset"

    invoke-static {v0, v5}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "form"

    const-string v9, "novalidate"

    invoke-static {v0, v9}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "frame"

    const-string v9, "noresize"

    invoke-static {v0, v9}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hr"

    const-string v9, "noshade"

    invoke-static {v0, v9}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "img"

    const-string v9, "ismap"

    invoke-static {v0, v9}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "checked"

    const-string v9, "input"

    invoke-static {v9, v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v5}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "multiple"

    invoke-static {v9, v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "readonly"

    invoke-static {v9, v10}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "required"

    invoke-static {v9, v11}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v6}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v7}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "iframe"

    const-string v9, "seamless"

    invoke-static {v7, v9}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "keygen"

    invoke-static {v7, v6}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v5}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "menu"

    invoke-static {v7, v8}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "declare"

    const-string v9, "object"

    invoke-static {v9, v7}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "typemustmatch"

    invoke-static {v9, v7}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "ol"

    invoke-static {v7, v8}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "reversed"

    invoke-static {v7, v9}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "optgroup"

    invoke-static {v7, v5}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "selected"

    const-string v9, "option"

    invoke-static {v9, v7}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v5}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "script"

    const-string v9, "defer"

    invoke-static {v7, v9}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "script"

    const-string v9, "async"

    invoke-static {v7, v9}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "select"

    invoke-static {v7, v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v5}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v6}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v11}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "style"

    const-string v7, "scoped"

    invoke-static {v0, v7}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td"

    const-string v7, "nowrap"

    invoke-static {v0, v7}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "textarea"

    invoke-static {v0, v5}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v10}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v11}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "th"

    const-string v5, "nowrap"

    invoke-static {v0, v5}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "track"

    const-string v5, "default"

    invoke-static {v0, v5}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ul"

    invoke-static {v0, v8}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {v0, v1}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lnet/sf/saxon/serialize/HTMLEmitter;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/serialize/XMLEmitter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->q:I

    const/4 v1, 0x1

    iput v1, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->r:I

    const/4 v1, 0x5

    iput v1, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->version:I

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->v:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->w:Ljava/util/Stack;

    return-void
.end method

.method public static isEmptyTag(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lnet/sf/saxon/serialize/HTMLEmitter;->O:Lnet/sf/saxon/serialize/HTMLTagHashSet;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/serialize/HTMLTagHashSet;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lnet/sf/saxon/serialize/HTMLEmitter;->Q:Lnet/sf/saxon/serialize/HTMLTagHashSet;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/serialize/HTMLTagHashSet;->contains(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lnet/sf/saxon/serialize/HTMLEmitter;->Z:Lnet/sf/saxon/serialize/HTMLTagHashSet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/serialize/HTMLTagHashSet;->contains(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "*+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/serialize/HTMLTagHashSet;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static m(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "decimal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "hex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "native"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3ebdafe9 -> :sswitch_2
        0x1931b -> :sswitch_1
        0x5bed1351 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lnet/sf/saxon/serialize/HTMLEmitter;->Q:Lnet/sf/saxon/serialize/HTMLTagHashSet;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/serialize/HTMLTagHashSet;->add(Ljava/lang/String;)V

    sget-object v0, Lnet/sf/saxon/serialize/HTMLEmitter;->Z:Lnet/sf/saxon/serialize/HTMLTagHashSet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2b

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/serialize/HTMLTagHashSet;->add(Ljava/lang/String;)V

    return-void
.end method

.method public static setEmptyTag(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/sf/saxon/serialize/HTMLEmitter;->O:Lnet/sf/saxon/serialize/HTMLTagHashSet;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/serialize/HTMLTagHashSet;->add(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->s:I

    if-lez v0, :cond_0

    or-int/lit8 p3, p3, 0x1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/serialize/XMLEmitter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public endElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->w:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeName;

    iget-object v1, p0, Lnet/sf/saxon/serialize/XMLEmitter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->s:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->s:I

    if-nez v2, :cond_0

    const v2, -0xf4240

    iput v2, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->s:I

    :cond_0
    invoke-static {v1}, Lnet/sf/saxon/serialize/HTMLEmitter;->isEmptyTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->isHTMLElement(Lnet/sf/saxon/om/NodeName;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->openStartTag:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->closeStartTag()V

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->elementStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->endElement()V

    :goto_0
    return-void
.end method

.method public abstract isHTMLElement(Lnet/sf/saxon/om/NodeName;)Z
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public openDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v1, "byte-order-mark"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v2, "encoding"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const v2, 0xfeff

    invoke-interface {v0, v2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v2, "{http://saxon.sf.net/}single-quotes"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x27

    iput-char v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->delimiter:C

    sget-object v0, Lnet/sf/saxon/serialize/XMLEmitter;->specialInAttSingle:[Z

    iput-object v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->attSpecials:[Z

    :cond_2
    const v0, -0xf4240

    iput v0, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->s:I

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean p3, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/HTMLEmitter;->openDocument()V

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    const/16 p3, 0x3e

    invoke-virtual {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->indexOf(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-gez p4, :cond_2

    :try_start_0
    iget-boolean p4, p0, Lnet/sf/saxon/serialize/XMLEmitter;->openStartTag:Z

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->closeStartTag()V

    :cond_1
    iget-object p4, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v0, Lnet/sf/saxon/str/StringConstants;->PI_START:[B

    invoke-interface {p4, v0}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object p4, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p4, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 p4, 0x20

    invoke-interface {p1, p4}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    iget-object p1, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p1, p2}, Lnet/sf/saxon/str/UnicodeWriter;->write(Lnet/sf/saxon/str/UnicodeString;)V

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p0, p3}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "A processing instruction in HTML must not contain a > character"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "SERE0015"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract rejectControlCharacters()Z
.end method

.method public setEscapeNonAscii(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->v:Z

    return-void
.end method

.method public startContentOLD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->closeStartTag()V

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->u:Ljava/lang/String;

    invoke-super/range {p0 .. p6}, Lnet/sf/saxon/serialize/XMLEmitter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p2, p0, Lnet/sf/saxon/serialize/XMLEmitter;->elementStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->t:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/HTMLEmitter;->isHTMLElement(Lnet/sf/saxon/om/NodeName;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->t:Ljava/lang/String;

    const-string p3, "script"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->t:Ljava/lang/String;

    const-string p3, "style"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x0

    iput p2, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->s:I

    :cond_1
    iget p2, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->s:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->s:I

    iget-object p0, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->w:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeAttribute(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/HTMLEmitter;->isHTMLElement(Lnet/sf/saxon/om/NodeName;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lnet/sf/saxon/serialize/HTMLEmitter;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p0, p2}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->s:I

    if-lez v0, :cond_1

    or-int/lit8 p4, p4, 0x1

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/serialize/XMLEmitter;->writeAttribute(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeDocType(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/serialize/XMLEmitter;->writeDocType(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeEmptyElementTagCloser(Ljava/lang/String;Lnet/sf/saxon/om/NodeName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/HTMLEmitter;->isHTMLElement(Lnet/sf/saxon/om/NodeName;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v0, Lnet/sf/saxon/str/StringConstants;->EMPTY_TAG_MIDDLE:[B

    invoke-interface {p2, v0}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p2, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 p1, 0x3e

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object p1, Lnet/sf/saxon/str/StringConstants;->EMPTY_TAG_END:[B

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    :goto_0
    return-void
.end method

.method public writeEscape(Lnet/sf/saxon/str/UnicodeString;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->attSpecials:[Z

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/sf/saxon/serialize/XMLEmitter;->specialInText:[Z

    :goto_0
    instance-of v1, p1, Lnet/sf/saxon/str/WhitespaceString;

    if-eqz v1, :cond_1

    check-cast p1, Lnet/sf/saxon/str/WhitespaceString;

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/str/WhitespaceString;->writeEscape([ZLnet/sf/saxon/str/UnicodeWriter;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/str/StringTool;->expand(Lnet/sf/saxon/str/UnicodeString;)[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_1c

    iget-boolean v4, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->v:Z

    const/16 v5, 0xa0

    const/16 v6, 0x7f

    if-eqz v4, :cond_2

    move v4, v2

    :goto_2
    array-length v7, v1

    if-ge v4, v7, :cond_4

    aget v7, v1, v4

    if-ge v7, v6, :cond_4

    aget-boolean v7, v0, v7

    if-nez v7, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_3
    array-length v7, v1

    if-ge v4, v7, :cond_4

    aget v7, v1, v4

    if-ge v7, v6, :cond_3

    aget-boolean v7, v0, v7

    if-nez v7, :cond_4

    goto :goto_4

    :cond_3
    iget-object v8, p0, Lnet/sf/saxon/serialize/Emitter;->characterSet:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    invoke-interface {v8, v7}, Lnet/sf/saxon/serialize/charcode/CharacterSet;->inCharset(I)Z

    move-result v8

    if-eqz v8, :cond_4

    if-le v7, v5, :cond_4

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    array-length v7, v1

    if-ne v4, v7, :cond_5

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    int-to-long v0, v2

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->substring(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Lnet/sf/saxon/str/UnicodeString;)V

    return-void

    :cond_5
    if-le v4, v2, :cond_6

    iget-object v7, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    int-to-long v8, v2

    int-to-long v10, v4

    invoke-virtual {p1, v8, v9, v10, v11}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-interface {v7, v2}, Lnet/sf/saxon/str/UnicodeWriter;->write(Lnet/sf/saxon/str/UnicodeString;)V

    :cond_6
    aget v2, v1, v4

    if-nez v2, :cond_7

    xor-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_6

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {p0, v2}, Lnet/sf/saxon/serialize/XMLEmitter;->writeCodePoint(I)V

    goto/16 :goto_6

    :cond_8
    if-gt v2, v6, :cond_15

    const/16 v5, 0xd

    const/16 v6, 0x3e

    const/16 v7, 0x26

    const/16 v8, 0x3c

    if-eqz p2, :cond_11

    if-ne v2, v8, :cond_9

    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v2, v8}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    goto/16 :goto_6

    :cond_9
    if-ne v2, v6, :cond_a

    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v5, Lnet/sf/saxon/str/StringConstants;->ESCAPE_GT:[B

    invoke-interface {v2, v5}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto/16 :goto_6

    :cond_a
    if-ne v2, v7, :cond_c

    add-int/lit8 v2, v4, 0x1

    array-length v5, v1

    if-ge v2, v5, :cond_b

    aget v2, v1, v2

    const/16 v5, 0x7b

    if-ne v2, v5, :cond_b

    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v2, v7}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    goto/16 :goto_6

    :cond_b
    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v5, Lnet/sf/saxon/str/StringConstants;->ESCAPE_AMP:[B

    invoke-interface {v2, v5}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto/16 :goto_6

    :cond_c
    const/16 v6, 0x22

    if-ne v2, v6, :cond_d

    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v5, Lnet/sf/saxon/str/StringConstants;->ESCAPE_QUOT:[B

    invoke-interface {v2, v5}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto/16 :goto_6

    :cond_d
    const/16 v6, 0x27

    if-ne v2, v6, :cond_e

    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v5, Lnet/sf/saxon/str/StringConstants;->ESCAPE_APOS:[B

    invoke-interface {v2, v5}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto/16 :goto_6

    :cond_e
    const/16 v6, 0xa

    if-ne v2, v6, :cond_f

    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v5, Lnet/sf/saxon/str/StringConstants;->ESCAPE_NL:[B

    invoke-interface {v2, v5}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto/16 :goto_6

    :cond_f
    const/16 v6, 0x9

    if-ne v2, v6, :cond_10

    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v5, Lnet/sf/saxon/str/StringConstants;->ESCAPE_TAB:[B

    invoke-interface {v2, v5}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto/16 :goto_6

    :cond_10
    if-ne v2, v5, :cond_1b

    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v5, Lnet/sf/saxon/str/StringConstants;->ESCAPE_CR:[B

    invoke-interface {v2, v5}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto/16 :goto_6

    :cond_11
    if-ne v2, v8, :cond_12

    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v5, Lnet/sf/saxon/str/StringConstants;->ESCAPE_LT:[B

    invoke-interface {v2, v5}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto/16 :goto_6

    :cond_12
    if-ne v2, v6, :cond_13

    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v5, Lnet/sf/saxon/str/StringConstants;->ESCAPE_GT:[B

    invoke-interface {v2, v5}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto/16 :goto_6

    :cond_13
    if-ne v2, v7, :cond_14

    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v5, Lnet/sf/saxon/str/StringConstants;->ESCAPE_AMP:[B

    invoke-interface {v2, v5}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto :goto_6

    :cond_14
    if-ne v2, v5, :cond_1b

    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v5, Lnet/sf/saxon/str/StringConstants;->ESCAPE_CR:[B

    invoke-interface {v2, v5}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto :goto_6

    :cond_15
    if-ge v2, v5, :cond_17

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/HTMLEmitter;->rejectControlCharacters()Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, Lnet/sf/saxon/serialize/XMLEmitter;->characterReferenceGenerator:Lnet/sf/saxon/serialize/CharacterReferenceGenerator;

    iget-object v6, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v5, v2, v6}, Lnet/sf/saxon/serialize/CharacterReferenceGenerator;->outputCharacterReference(ILnet/sf/saxon/str/UnicodeWriter;)V

    goto :goto_6

    :cond_16
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Illegal HTML character: decimal "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "SERE0014"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_17
    if-ne v2, v5, :cond_18

    iget-object v2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v5, Lnet/sf/saxon/str/StringConstants;->ESCAPE_NBSP:[B

    invoke-interface {v2, v5}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto :goto_6

    :cond_18
    const v5, 0xffff

    if-gt v2, v5, :cond_1a

    iget-boolean v5, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->v:Z

    if-nez v5, :cond_1a

    iget-object v5, p0, Lnet/sf/saxon/serialize/Emitter;->characterSet:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    invoke-interface {v5, v2}, Lnet/sf/saxon/serialize/charcode/CharacterSet;->inCharset(I)Z

    move-result v5

    if-nez v5, :cond_19

    goto :goto_5

    :cond_19
    iget-object v5, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v5, v2}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    goto :goto_6

    :cond_1a
    :goto_5
    iget-object v5, p0, Lnet/sf/saxon/serialize/XMLEmitter;->characterReferenceGenerator:Lnet/sf/saxon/serialize/CharacterReferenceGenerator;

    iget-object v6, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {v5, v2, v6}, Lnet/sf/saxon/serialize/CharacterReferenceGenerator;->outputCharacterReference(ILnet/sf/saxon/str/UnicodeWriter;)V

    :cond_1b
    :goto_6
    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_1

    :cond_1c
    return-void
.end method
