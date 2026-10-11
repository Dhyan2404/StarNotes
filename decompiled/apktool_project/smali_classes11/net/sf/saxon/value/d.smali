.class public final synthetic Lnet/sf/saxon/value/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/value/Whitespace$b;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/str/UnicodeBuilder;

.field public final synthetic b:Lnet/sf/saxon/str/UnicodeString;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/str/UnicodeBuilder;Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/value/d;->a:Lnet/sf/saxon/str/UnicodeBuilder;

    iput-object p2, p0, Lnet/sf/saxon/value/d;->b:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method


# virtual methods
.method public final a(IILnet/sf/saxon/value/Whitespace$TokenCategory;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/value/d;->a:Lnet/sf/saxon/str/UnicodeBuilder;

    iget-object p0, p0, Lnet/sf/saxon/value/d;->b:Lnet/sf/saxon/str/UnicodeString;

    invoke-static {v0, p0, p1, p2, p3}, Lnet/sf/saxon/value/Whitespace;->b(Lnet/sf/saxon/str/UnicodeBuilder;Lnet/sf/saxon/str/UnicodeString;IILnet/sf/saxon/value/Whitespace$TokenCategory;)V

    return-void
.end method
