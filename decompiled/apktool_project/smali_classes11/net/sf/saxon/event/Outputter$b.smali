.class public Lnet/sf/saxon/event/Outputter$b;
.super Lnet/sf/saxon/str/AbstractUniStringConsumer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/event/Outputter;->getStringReceiver(ZLnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/str/UniStringConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/str/UnicodeBuilder;

.field public final synthetic f:Lnet/sf/saxon/event/Outputter;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/Outputter$b;->f:Lnet/sf/saxon/event/Outputter;

    invoke-direct {p0}, Lnet/sf/saxon/str/AbstractUniStringConsumer;-><init>()V

    new-instance p1, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {p1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/Outputter$b;->e:Lnet/sf/saxon/str/UnicodeBuilder;

    return-void
.end method


# virtual methods
.method public accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/event/Outputter$b;->e:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    return-object p0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/Outputter$b;->f:Lnet/sf/saxon/event/Outputter;

    new-instance v1, Lnet/sf/saxon/value/StringValue;

    iget-object p0, p0, Lnet/sf/saxon/event/Outputter$b;->e:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;)V

    return-void
.end method
