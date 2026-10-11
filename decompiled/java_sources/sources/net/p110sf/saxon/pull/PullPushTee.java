package net.p110sf.saxon.pull;

import java.util.List;
import java.util.Stack;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.SequenceReceiver;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.Orphan;

/* loaded from: classes11.dex */
public class PullPushTee extends PullFilter {

    /* renamed from: c */
    public final Receiver f100947c;

    /* renamed from: d */
    public boolean f100948d;

    /* renamed from: e */
    public final Stack<NamespaceMap> f100949e;

    /* renamed from: net.sf.saxon.pull.PullPushTee$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18431a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f100950a;

        static {
            int[] iArr = new int[PullEvent.values().length];
            f100950a = iArr;
            try {
                iArr[PullEvent.START_DOCUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f100950a[PullEvent.START_ELEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f100950a[PullEvent.TEXT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f100950a[PullEvent.COMMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f100950a[PullEvent.PROCESSING_INSTRUCTION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f100950a[PullEvent.END_ELEMENT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f100950a[PullEvent.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f100950a[PullEvent.END_OF_INPUT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f100950a[PullEvent.ATOMIC_VALUE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f100950a[PullEvent.ATTRIBUTE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f100950a[PullEvent.NAMESPACE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public PullPushTee(PullProvider pullProvider, Receiver receiver) {
        super(pullProvider);
        this.f100948d = false;
        this.f100949e = new Stack<>();
        this.f100947c = receiver;
    }

    /* renamed from: a */
    public final void m63474a(PullEvent pullEvent) throws XPathException {
        PullProvider underlyingProvider = getUnderlyingProvider();
        Location sourceLocator = underlyingProvider.getSourceLocator();
        if (sourceLocator == null) {
            sourceLocator = Loc.NONE;
        }
        Location location = sourceLocator;
        Receiver receiver = this.f100947c;
        switch (C18431a.f100950a[pullEvent.ordinal()]) {
            case 1:
                receiver.startDocument(0);
                break;
            case 2:
                NamespaceBinding[] namespaceDeclarations = underlyingProvider.getNamespaceDeclarations();
                NamespaceMap emptyMap = this.f100949e.isEmpty() ? NamespaceMap.emptyMap() : this.f100949e.peek();
                for (NamespaceBinding namespaceBinding : namespaceDeclarations) {
                    if (namespaceBinding == null) {
                        this.f100949e.push(emptyMap);
                        receiver.startElement(underlyingProvider.getNodeName(), underlyingProvider.getSchemaType(), underlyingProvider.getAttributes(), emptyMap, location, 64);
                        break;
                    } else {
                        if (!namespaceBinding.getPrefix().isEmpty() || !namespaceBinding.getURI().equals(emptyMap.getDefaultNamespace())) {
                            emptyMap = emptyMap.put(namespaceBinding.getPrefix(), namespaceBinding.getURI());
                        }
                    }
                }
                this.f100949e.push(emptyMap);
                receiver.startElement(underlyingProvider.getNodeName(), underlyingProvider.getSchemaType(), underlyingProvider.getAttributes(), emptyMap, location, 64);
                break;
            case 3:
                receiver.characters(underlyingProvider.getStringValue(), location, 1024);
                break;
            case 4:
                receiver.comment(underlyingProvider.getStringValue(), location, 0);
                break;
            case 5:
                receiver.processingInstruction(underlyingProvider.getNodeName().getLocalPart(), underlyingProvider.getStringValue(), location, 0);
                break;
            case 6:
                receiver.endElement();
                this.f100949e.pop();
                break;
            case 7:
                List<UnparsedEntity> unparsedEntities = underlyingProvider.getUnparsedEntities();
                if (unparsedEntities != null) {
                    for (UnparsedEntity unparsedEntity : unparsedEntities) {
                        receiver.setUnparsedEntity(unparsedEntity.getName(), unparsedEntity.getSystemId(), unparsedEntity.getPublicId());
                    }
                }
                receiver.endDocument();
                break;
            case 8:
                underlyingProvider.close();
                break;
            case 9:
                if (receiver instanceof SequenceReceiver) {
                    receiver.m62516b(super.getAtomicValue(), location, 0);
                    break;
                } else {
                    if (this.f100948d) {
                        receiver.characters(StringConstants.SINGLE_SPACE, location, 0);
                    }
                    receiver.characters(underlyingProvider.getStringValue(), location, 0);
                    break;
                }
            case 10:
                if (receiver instanceof SequenceReceiver) {
                    Orphan orphan = new Orphan(underlyingProvider.getPipelineConfiguration().getConfiguration());
                    orphan.setNodeName(getNodeName());
                    orphan.setNodeKind((short) 2);
                    orphan.setStringValue(getStringValue().tidy());
                    receiver.m62516b(orphan, location, 0);
                    break;
                }
                break;
            case 11:
                if (receiver instanceof SequenceReceiver) {
                    Orphan orphan2 = new Orphan(underlyingProvider.getPipelineConfiguration().getConfiguration());
                    orphan2.setNodeName(getNodeName());
                    orphan2.setNodeKind((short) 13);
                    orphan2.setStringValue(getStringValue().tidy());
                    receiver.m62516b(orphan2, location, 0);
                    break;
                }
                break;
            default:
                throw new UnsupportedOperationException("" + pullEvent);
        }
        this.f100948d = pullEvent == PullEvent.ATOMIC_VALUE;
    }

    public Receiver getReceiver() {
        return this.f100947c;
    }

    @Override // net.p110sf.saxon.pull.PullFilter, net.p110sf.saxon.pull.PullProvider
    public PullEvent next() throws XPathException {
        PullEvent next = super.next();
        this.currentEvent = next;
        m63474a(next);
        return this.currentEvent;
    }
}
