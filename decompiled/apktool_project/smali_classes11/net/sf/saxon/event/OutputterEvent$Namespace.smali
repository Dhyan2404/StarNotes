.class public Lnet/sf/saxon/event/OutputterEvent$Namespace;
.super Lnet/sf/saxon/event/OutputterEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/OutputterEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Namespace"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/event/OutputterEvent;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/OutputterEvent$Namespace;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/event/OutputterEvent$Namespace;->b:Ljava/lang/String;

    iput p3, p0, Lnet/sf/saxon/event/OutputterEvent$Namespace;->c:I

    return-void
.end method


# virtual methods
.method public replay(Lnet/sf/saxon/event/Outputter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/OutputterEvent$Namespace;->a:Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/event/OutputterEvent$Namespace;->b:Ljava/lang/String;

    iget p0, p0, Lnet/sf/saxon/event/OutputterEvent$Namespace;->c:I

    invoke-virtual {p1, v0, v1, p0}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
