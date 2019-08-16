package com.compute;

public class JavaBean {
	private String firstname;
	private String lastname;
	private String remarks;
	private String midterms_raw;
	private String prefinals_raw;
	private String message;
	private String failmsg;
	private String passmsg;
	private double termgrade_raw;
	private double decimalgrade;
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getMidterms_raw() {
		return midterms_raw;
	}
	public void setMidterms_raw(String midterms_raw) {
		this.midterms_raw = midterms_raw;
	}
	public String getPrefinals_raw() {
		return prefinals_raw;
	}
	public void setPrefinals_raw(String prefinals_raw) {
		this.prefinals_raw = prefinals_raw;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getFailmsg() {
		return "Sorry you <span class='text-danger'><b>failed</b></span>. Your final grade is " + "<b><u>"+termgrade_raw+"</u></b>";
	}
	public void setFailmsg(String failmsg) {
		this.failmsg = failmsg;
	}
	public String getPassmsg() {
		return "<span class='text-success'><b>Congratulations</b></span>. You passed with a final grade of " + "<b><u>" +termgrade_raw+"</u></b>";
	}
	public void setPassmsg(String passmsg) {
		this.passmsg = passmsg;
	}
	public double getTermgrade_raw() {
		return termgrade_raw;
	}
	public void setTermgrade_raw(double termgrade_raw) {
		this.termgrade_raw = termgrade_raw;
	}
	public double getDecimalgrade() {
		return decimalgrade;
	}
	public void setDecimalgrade(double decimalgrade) {
		this.decimalgrade = decimalgrade;
	}
	
	public void Facade() {
		Compute();
	}
	
	private void Compute() {
		termgrade_raw = Math.round((Integer.parseInt(getMidterms_raw().trim()) * 0.5) + (Integer.parseInt(getPrefinals_raw().trim()) * 0.5));
		if (termgrade_raw <= 69 && termgrade_raw >= 0) {
			setDecimalgrade(5.0);
			setRemarks("<p class='text-danger'><b>Failed</b></p>");
			message = getFailmsg();
		}else if (termgrade_raw >= 70 && termgrade_raw <= 74) {
			setDecimalgrade(3.00);
			setRemarks("<p class='text-warning'><b>Fair</b></p>");
			message = getPassmsg();
		}else if (termgrade_raw >= 75 && termgrade_raw <= 79) {
			setDecimalgrade(2.75);
			setRemarks("<p class='text-warning'><b>Fair</b></p>");
			message = getPassmsg();
		}else if (termgrade_raw >= 80 && termgrade_raw <= 84) {
			setDecimalgrade(2.50);
			setRemarks("<p class='text-info'><b>Good</b></p>");
			message = getPassmsg();
		}else if (termgrade_raw >= 85 && termgrade_raw <= 89) {
			setDecimalgrade(2.00);
			setRemarks("<p class='text-primary'><b>Satisfactory</b></p>");
			message = getPassmsg();
		}else if (termgrade_raw >= 89 && termgrade_raw <= 91) {
			setDecimalgrade(1.75);
			setRemarks("<p class='text-success'><b>Very Good</b></p>");
			message = getPassmsg();
		}else if (termgrade_raw >= 92 && termgrade_raw <= 95) {
			setDecimalgrade(1.50);
			setRemarks("<p class='text-success'><b>Very Good</b></p>");
			message = getPassmsg();
		}else if (termgrade_raw >= 96 && termgrade_raw <= 98) {
			setDecimalgrade(1.25);
			setRemarks("<p class='text-success'><b>Very Good</b></p>");
			message = getPassmsg();
		}else if (termgrade_raw >= 99 && termgrade_raw <= 100) {
			setDecimalgrade(1.00);
			setRemarks("<p class='text-success'><b>Very Good</b></p>");
			message = getPassmsg();
		}
	}
}
