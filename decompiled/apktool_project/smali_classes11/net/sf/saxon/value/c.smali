.class public final synthetic Lnet/sf/saxon/value/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/value/Whitespace$b;


# instance fields
.field public final synthetic a:Ljava/lang/StringBuilder;

.field public final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/value/c;->a:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lnet/sf/saxon/value/c;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final a(IILnet/sf/saxon/value/Whitespace$TokenCategory;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/value/c;->a:Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/value/c;->b:Ljava/lang/CharSequence;

    invoke-static {v0, p0, p1, p2, p3}, Lnet/sf/saxon/value/Whitespace;->d(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;IILnet/sf/saxon/value/Whitespace$TokenCategory;)V

    return-void
.end method
