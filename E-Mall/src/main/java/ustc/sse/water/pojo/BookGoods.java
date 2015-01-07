package ustc.sse.water.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;

/**
 * 
 * 书籍类. <br>
 * 类详细说明.
 * <p>
 * Copyright: Copyright (c) 2014年3月3日 下午4:22:06
 * <p>
 * Company: 中国科学技术大学软件学院
 * <p>
 * @author 杨飞：sa613371@mail.ustc.edu.cn
 * @version 1.0.0
 */
@SuppressWarnings("serial")
@Entity
@PrimaryKeyJoinColumn(name="BookId")
public class BookGoods extends Product {

	/*ISBN编号，长度20*/
	private String isbn;
	
	/*是否为套装*/
	private String isSuit;
	
	/*书本的定价，这个价格是不变的*/
	private float fixedPrice;
	
	/*出版社名称，长度50*/
	private String publisher;
	
	/*出版时间，年月日,长度10*/
	private String publishTime;
	
	/*作者，多个作者以；分割，长度50*/
	private String author;
	
	/*作者地区，长度50*/
	private String authorRegion;
	
	/*译者，多个译者以；分割，长度50*/
	private String translator;
	
	/*编者，多个编者以；分割，长度50*/
	private String editor;
	
	/*开本大小，平常所说的16开之类，长度10*/
	private String format;
	
	/*印刷时间，年月日，长度10*/
	private String printTime;
	
	/*页数*/
	private int pages;
	
	/*字数*/
	private long wordCount;

	@Column(length=20)
	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	@Column(length=20)
	public String isSuit() {
		return isSuit;
	}

	public void setSuit(String isSuit) {
		this.isSuit = isSuit;
	}

	public float getFixedPrice() {
		return fixedPrice;
	}

	public void setFixedPrice(float fixedPrice) {
		this.fixedPrice = fixedPrice;
	}

	@Column(length=50)
	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	@Column(length=10)
	public String getPublishTime() {
		return publishTime;
	}

	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}

	@Column(length=50)
	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	@Column(length=50)
	public String getAuthorRegion() {
		return authorRegion;
	}

	public void setAuthorRegion(String authorRegion) {
		this.authorRegion = authorRegion;
	}

	@Column(length=50)
	public String getTranslator() {
		return translator;
	}

	public void setTranslator(String translator) {
		this.translator = translator;
	}

	@Column(length=50)
	public String getEditor() {
		return editor;
	}

	public void setEditor(String editor) {
		this.editor = editor;
	}

	@Column(length=10)
	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

	@Column(length=10)
	public String getPrintTime() {
		return printTime;
	}

	public void setPrintTime(String printTime) {
		this.printTime = printTime;
	}

	public int getPages() {
		return pages;
	}

	public void setPages(int pages) {
		this.pages = pages;
	}

	public long getWordCount() {
		return wordCount;
	}

	public void setWordCount(long wordCount) {
		this.wordCount = wordCount;
	}
	
	
}
