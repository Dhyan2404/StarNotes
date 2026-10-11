package com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.impl;

import com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTMention;
import com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedCommentMentions;
import com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.impl.CTThreadedCommentMentionsImpl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CTThreadedCommentMentionsImpl extends XmlComplexContentImpl implements CTThreadedCommentMentions {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/spreadsheetml/2018/threadedcomments", "mention")};
    private static final long serialVersionUID = 1;

    public CTThreadedCommentMentionsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedCommentMentions
    public CTMention addNewMention() {
        CTMention cTMention;
        synchronized (monitor()) {
            check_orphaned();
            cTMention = (CTMention) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMention;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedCommentMentions
    public CTMention[] getMentionArray() {
        return (CTMention[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTMention[0]);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedCommentMentions
    public List<CTMention> getMentionList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bsc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTThreadedCommentMentionsImpl.this.getMentionArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.csc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTThreadedCommentMentionsImpl.this.setMentionArray(((Integer) obj).intValue(), (CTMention) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dsc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTThreadedCommentMentionsImpl.this.insertNewMention(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.esc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTThreadedCommentMentionsImpl.this.removeMention(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fsc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTThreadedCommentMentionsImpl.this.sizeOfMentionArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedCommentMentions
    public CTMention insertNewMention(int i) {
        CTMention cTMention;
        synchronized (monitor()) {
            check_orphaned();
            cTMention = (CTMention) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTMention;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedCommentMentions
    public void removeMention(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedCommentMentions
    public void setMentionArray(CTMention[] cTMentionArr) {
        check_orphaned();
        arraySetterHelper(cTMentionArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedCommentMentions
    public int sizeOfMentionArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedCommentMentions
    public CTMention getMentionArray(int i) {
        CTMention cTMention;
        synchronized (monitor()) {
            check_orphaned();
            cTMention = (CTMention) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTMention == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMention;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedCommentMentions
    public void setMentionArray(int i, CTMention cTMention) {
        generatedSetterHelperImpl(cTMention, PROPERTY_QNAME[0], i, (short) 2);
    }
}
